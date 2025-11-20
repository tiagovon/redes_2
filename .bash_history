sudo apt get update
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install openssh
sudo apt-get install openssh-server
sudo shutdwon now
sudo poweroff 
sudo poweroff
ls
clear
ip addr
ip a
sudo poweroff
clear
hostname
cat /etc/hostname 
hostnamectl
hostname tiago
root hostname tiago
sudo hostname tiago
hostnamectl
set-hostname tiago
hostnamectl set-hostname tiago
hostnamectl
hostname
ip addr
nano /etc/hosts
clear
cat /etc/hosts
ping rede_master
clear
ping 192.168.0.159
cat /etc/network
cd /etc/network
ls
cat if-pre-up.d/
cd if-pre-up.d/
ls
cat ethtool 
cd
apt-get install net-tools
apt install net-tools
sudo apt install net-tools
cat /etc/nsswitch.conf 
ls -l /etc/resolv.conf 
cat /etc/resolv.conf 
hostnamectl set-hostname tiago2
hostnamectl set-hostname dltec.exemplo.com
ls
touch teste
nano teste
pwd
cat /home/master/teste
sudo nano /etc/nsswitch.conf 
getent test 
getent test | grep tiago
cat /etc/nsswitch.conf 
sudo nano /etc/nsswitch.conf 
ls
ls -a
clear
getent test 
sudo nano /etc/nsswitch.conf 
sudo poweroff 
clear
ip addr
nano /etc/network/interfaces.d
ls /etc/network
nano /etc/network/if-up.d/ethtool 
nano /etc/network/if-up.d/teste
ls /etc/network/if-up.d/teste
ls /etc/network/if-up.d
ls -al /etc/network/if-up.d
sudo poweroff 
clear
ip l sh
ip l show
ip link
ip link show
ip l sh
ifconfig
ip  l dynamic
ip a list dynamic
ip route s
route
route -n
clear
ls
su -c mkdir dir_test
sudo mkdir dir_test
ls
ls -l
lastn
lastb
sudo lastb
last
lastlog
w
who
who -aH
clear
ulimit
cat /etc/security/limits.conf 
nano /etc/security/limits.conf 
sudo nano /etc/security/limits.conf 
tty6
netstat -natu
lsof
lsof -u tiago
lsof -i
lsof -i :22
nmap 
sudo poweroff
ls
rm -rf dir_test/
rm teste 
cd
ls
sudo nano /etc/hostname 
sudo poweroff 
ls -a
ls .ssh/
ls .ssh/authorized_keys 
cat .ssh/authorized_keys 
ip addr 
clear
hostname
ip a
sudo nano /etc/hots
clear
ls /etc/host
ls /etc/hosts
ls /etc/h*
/etc/hosts
sudo /etc/hosts
sudo nano /etc/hosts
clear
hostname
ssh dns01.meutrabalho.com.br@127.0.0.1 -p 2280
ssh -p 2280
ssh -W 2280
man ssh
clear
ssh localhost
ip a
clear
ip a
sudo apt install bind9 -y
sudo nano /etc/bind/named.conf.local
cd /etc/
ls
cd bind/
ls
sudo nano db.meutrabalho.com.br
sudo systemctl restart bind9
cd ..
sudo nano /hosts
sudo nano hosts
sudo systemctl restart bind9
cd
dig www.meutrabalho.com.br
sudo nano /etc/resolv.conf
dig @127.0.0.1 www.meutrabalho.com.br
sudo poweroff 
ip addr
sudo poweroff 
ip a
sudo nano /etc/systemd/network/10-static.network
sudo systemctl restart systemd-networkd
ip a
sudo systemctl restart systemd-networkd
sudo nano /etc/systemd/network/10-static.network
sudo systemctl restart systemd-networkd
clear
ip a
inet 192.168.0.72/24 scope global dynamic enp0s3
sudo mkdir -p /etc/systemd/network
sudo nano /etc/systemd/network/10-static.network
sudo systemctl stop systemd-networkd-wait-online.service
sudo systemctl disable systemd-networkd-wait-online.service
sudo systemctl restart systemd-networkd
ip a
sudo mkdir -p /etc/systemd/network
sudo nano /etc/systemd/network/10-enp0s3.network
sudo systemctl restart systemd-networkd
sudo systemctl stop systemd-networkd
sudo ip addr flush dev enp0s3
sudo systemctl start systemd-networkd
ip a
dig @127.0.0.1 www.meutrabalho.com.br +short
sudo nano /etc/bind/db.meutrabalho.com.br
22
sudo systemctl restart bind9
dig @127.0.0.1 www.meutrabalho.com.br +short
sudo poweroff 
ip a
inet 192.168.0.72/24 scope global dynamic enp0s3
ip link
sudo nano /etc/bind/db.meutrabalho.com.br
sudo systemctl restart bind9
dig @127.0.0.1 www.meutrabalho.com.br +short
dig @127.0.0.1 app03.meutrabalho.com.br +short
dig @127.0.0.1 db01.meutrabalho.com.br +short
dig www.meutrabalho.com.br
sudo nano /etc/bind/named.conf.local
sudo nano /etc/bind/db.meutrabalho_redes.com.br
sudo systemctl restart bind9
dig @127.0.0.1 www.meutrabalho_redes.com.br +short
clear
dig @127.0.0.1 www.meutrabalho_redes.com.br +short
http://www.meutrabalho_redes.com.br
sudo nano /etc/bind/named.conf.local
ls -l /etc/bind/db.meutrabalho_redes.com.br
sudo nano /etc/bind/db.meutrabalho_redes.com.br
sudo named-checkzone meutrabalho_redes.com.br /etc/bind/db.meutrabalho_redes.com.br
sudo systemctl restart bind9
sudo systemctl status bind9 --no-pager
dig @127.0.0.1 www.meutrabalho_redes.com.br +short
dig @127.0.0.1 www.meutrabalho.com.br +short
clear
sudo /etc/bind/named.conf.local
sudo nano /etc/bind/named.conf.local
sudo nano /etc/bind/db.meutrabalho-redes.com.br
sudo named-checkzone meutrabalho-redes.com.br /etc/bind/db.meutrabalho-redes.com.br
sudo systemctl restart bind9
dig @127.0.0.1 www.meutrabalho-redes.com.br +short
ipconfig /flushdns
nslookup www.meutrabalho-redes.com.br
ipconfig /flushdns
sudo nano /etc/resolv.conf
dig www.meutrabalho-redes.com.br +short
sudo systemctl stop bind9
sudo poweroff 
sudo systemctl start bind9
sudo systemctl stop bind9
sudo poweroff 
sudo systemctl start bind9
ip a
sudo systemctl start bind9
sudo systemctl status bind9 --no-pager
dig @127.0.0.1 www.meutrabalho-redes.com.br +short
sudo nano /etc/bind/db.meutrabalho-redes.com.br
sudo named-checkzone meutrabalho-redes.com.br /etc/bind/db.meutrabalho-redes.com.br
sudo systemctl restart bind9
dig @192.168.0.72 www.meutrabalho-redes.com.br +short
nslookup www.meutrabalho-redes.com.br 192.168.0.72
sudo ss -lntup | grep named
sudo systemctl status meutrabalho --no-pager
sudo ss -lntp | grep ':80'
sudo ufw status
sudo nano /etc/bind/db.meutrabalho-redes.com.br
$TTL 3
www     IN  A   192.168.0.73
$TTL 3
www     IN  A   192.168.0.73
sudo nano /etc/bind/db.meutrabalho-redes.com.br
sudo rndc reload
sudo systemctl restart bind9
dig @192.168.0.72 www.meutrabalho-redes.com.br
sudo named-checkzone meutrabalho-redes.com.br /etc/bind/db.meutrabalho-redes.com.br
sudo nano /etc/bind/db.meutrabalho-redes.com.br
sudo nano /etc/bind/named.conf.local
sudo rndc reload
sudo systemctl restart bind9
sudo tail -n 20 /var/log/syslog
dig @192.168.0.72 www.meutrabalho-redes.com.br
sudo systemctl stop bind9
sudo poweroff 
sudo systemctl start bind9
sudo systemctl status bind9
sudo timedatectl set-timezone America/Sao_Paulo
sudo systemctl stop bind9
sudo poweroff 
sudo systemctl stop bind9
sudo poweroff 
sudo systemctl start bind9
ip a
sudo systemctl stop bind9 && sudo poweroff 
sudo systemctl start bind9 
ip a
sudo systemctl start bind9 
sudo systemctl status bind9 
ping 192.168.0.73
ping 192.168.0.73 -c 4
sudo systemctl stop bind9 
sudo systemctl start bind9 
sudo reboot 
sudo systemctl start bind9 
ip a
ping 172.27.1.44
ping 192.168.52.12 -c 4
sudo poweroff 
sudo nano /etc/netplan/50-cloud-init.yaml 
sudo netplan apply 
sudo nano /etc/netplan/50-cloud-init.yaml 
sudo netplan apply 
sudo nano /etc/netplan/50-cloud-init.yaml 
sudo netplan apply 
clear
ip a
sudo nano /etc/netplan/50-cloud-init.yaml 
clear
sudo netplan apply 
ip a
S
sudo poweroff 
date
sudo nano /etc/systemd/network/10-enp0s3.network 
clear
sudo systemctl restart systemd-network
sudo systemctl restart systemd-network.service
cleear
clear
ip a
sudo nano /etc/systemd/network/10-enp0s3.network 
sudo systemctl restart systemd-networkd
clear
ip a
sudo poweroff 
sudo systemctl start bind9 
sudo systemctl stop  bind9 
sudo poweroff 
