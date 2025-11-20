from flask import Flask, render_template, request, redirect, url_for, session
from flask_session import Session
import socket, datetime, redis
import mysql.connector
from werkzeug.security import check_password_hash

# ==============================================
# CONFIGURAÇÕES GERAIS
# ==============================================
APP_TITLE = "Aplicação 3-camadas com Round-Robin DNS"

DB_CFG = dict(
    host="192.168.0.49",
    user="appuser",
    password="app@123",
    database="meutrabalho"
)

REDIS_HOST = "192.168.0.49"

# ==============================================
# INICIALIZAÇÃO DO FLASK
# ==============================================
app = Flask(__name__)
app.config["SECRET_KEY"] = "chave-super-secreta"
app.config["SESSION_TYPE"] = "redis"
app.config["SESSION_REDIS"] = redis.Redis(host=REDIS_HOST, port=6379, db=0)
app.config["SESSION_COOKIE_NAME"] = "mt_sess"
app.config["PERMANENT_SESSION_LIFETIME"] = 3600  # 1 hora
Session(app)


# ==============================================
# CONEXÃO COM O BANCO
# ==============================================
def db():
    return mysql.connector.connect(**DB_CFG)


# ==============================================
# ROTA PRINCIPAL
# ==============================================
@app.route("/")
def index():
    hostname = socket.gethostname()
    agora = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    client = request.headers.get("X-Forwarded-For", request.remote_addr)
    user = session.get("user")
    sid = request.cookies.get(app.config.get("SESSION_COOKIE_NAME", "session"))

    return render_template("index.html",
                           titulo=APP_TITLE,
                           servidor=hostname,
                           hora=agora,
                           cliente=client,
                           user=user,
                           sid=sid)


# ==============================================
# LOGIN
# ==============================================
@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        username = request.form.get("username", "").strip()
        password = request.form.get("password", "")

        con = db()
        cur = con.cursor()
        cur.execute("SELECT id, full_name, password_hash FROM users WHERE username=%s", (username,))
        row = cur.fetchone()
        cur.close()
        con.close()

        if row and check_password_hash(row[2], password):
            session["user"] = {
                "id": row[0],
                "username": username,
                "full_name": row[1],
                "login_at": datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            }
            session.permanent = True
            return redirect(url_for("perfil"))
        else:
            return render_template("login.html", error="Usuário ou senha inválidos.")
    return render_template("login.html")


# ==============================================
# PERFIL DO USUÁRIO
# ==============================================
@app.route("/perfil")
def perfil():
    if "user" not in session:
        return redirect(url_for("login"))
    hostname = socket.gethostname()
    sid = request.cookies.get(app.config.get("SESSION_COOKIE_NAME", "session"))
    return render_template("perfil.html",
                           user=session["user"],
                           servidor=hostname,
                           sid=sid)


# ==============================================
# LOGOUT
# ==============================================
@app.route("/logout")
def logout():
    session.clear()
    return redirect(url_for("index"))


# ==============================================
# EXECUÇÃO LOCAL (opcional)
# ==============================================
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
