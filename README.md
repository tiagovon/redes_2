# 🖥️ Projeto de Infraestrutura com 5 VMs — DNS, Apps, MySQL e Redis

Este repositório documenta a criação e configuração de um ambiente completo composto por **5 máquinas virtuais Ubuntu Server**, todas rodando em **modo Bridge**, com DNS próprio, aplicações distribuídas e um servidor de banco de dados centralizado.

---

## 🌐 Arquitetura Geral do Ambiente

- **1 Servidor DNS** (BIND9)  
- **3 Servidores de Aplicação** (Python)  
- **1 Servidor de Banco de Dados** (MySQL + Redis)  
- Todas as máquinas em **modo Bridge**
- Todas com **IP estático** e configuradas manualmente

---

## 🔧 Configuração de Rede

Cada VM utiliza um arquivo de configuração de rede no `systemd-networkd`:


### ✔️ Importante  
A rede deve ser **coerente entre todas as VMs**.

Exemplo:  
Se a rede física for:


então TODAS as VMs precisam estar dentro desse range, como:

| Função | IP Exemplo |
|--------|------------|
| DNS | 192.168.0.10 |
| app1 | 192.168.0.20 |
| app2 | 192.168.0.21 |
| app3 | 192.168.0.22 |
| Banco de Dados | 192.168.0.30 |

Sempre que a rede mudar, **é necessário reconfigurar os IPs de todas as VMs**.

---

## 🧭 Servidor DNS (BIND9)

No servidor `dns01`, foi instalado e configurado:


### Configurações realizadas:

- Arquivo de zona principal
- Registros **A** para:
  - app1
  - app2
  - app3
  - banco de dados
- Round-robin DNS para distribuir chamadas entre os apps

### Windows também deve usar o DNS da VM

No **Painel de Controle → Configurações de Rede**, foi configurado:


Assim, o Windows usa o BIND9 para resolver o domínio das VMs.

---

## 🗄️ Banco de Dados — MySQL + Redis

O servidor `db01` contém:

### ✔️ MySQL
Banco simples criado para testes das aplicações Python.

### ✔️ Redis
Usado como sistema de:
- cache
- sessão dos apps
- chave/valor

Configuração dos apps:

---

## 🐍 Servidores de Aplicação (app1, app2, app3)

- Cada servidor roda uma aplicação Python.  
- Todas resolvem os IPs via DNS (BIND9).  
- Todas se conectam ao MySQL e ao Redis.  
- Todas seguem a mesma configuração de rede, com IP fixo e gateway.

---

## 🖥️ Configuração das VMs

| Item | Descrição |
|------|-----------|
| Sistema Operacional | Ubuntu Server |
| Virtualização | VirtualBox |
| Modo de Rede | Bridge |
| Configuração IP | Manual (systemd-networkd) |
| Quantidade | 5 máquinas |

---

## 📡 Resumo Final do Ambiente

| Função | Host | Serviços |
|--------|-------|----------|
| DNS | dns01 | BIND9 |
| App 1 | app1 | Python → MySQL + Redis |
| App 2 | app2 | Python → MySQL + Redis |
| App 3 | app3 | Python → MySQL + Redis |
| Banco de Dados | db01 | MySQL + Redis |

---

## 🚀 Conclusão

Este ambiente serve como uma infraestrutura de estudos, simulando um cenário corporativo real com:

- DNS interno próprio  
- Servidores de aplicação distribuídos  
- Banco centralizado  
- Redis para cache/sessões  
- Rede manual e controlada  
- Integração entre múltiplas VMs em modo Bridge  

Excelente para aprendizado em redes, sistemas, backend e DevOps.

---

