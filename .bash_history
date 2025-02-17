mysql -u root -p
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
sudo mkdir -p /var/run/mysqld
sudo chown -R mysql:mysql /var/run/mysqld
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo apt update && sudo apt upgrade -y
sudo apt install ansible -y
ansible --version
sudo nano /etc/ansible/hosts
ls /etc/ansible
sudo touch /etc/ansible/hosts
sudo mkdir -p /etc/ansible
sudo touch /etc/ansible/hosts
sudo nano /etc/ansible/hosts
ansible all -m ping
sudo systemctl status ssh
sudo ufw allow ssh
sudo ufw enable
ip a
sudo nano /etc/ansible/hosts
ansible all -m ping
ls -l /home/abdelrahman/.ssh/id_rsa
mkdir -p /home/abdelrahman/.ssh
ssh-keygen -t rsa -b 4096 -f /home/abdelrahman/.ssh/id_rsa
ssh-copy-id -i /home/abdelrahman/.ssh/id_rsa.pub abdelrahman@192.168.1.6
ansible all -m ping
nano lemp_playbook.yml
nginx -v
mysql --version
php -v
sudo apt update
sudo apt install nginx
sudo apt install mysql-server
sudo mysql_secure_installation
sudo apt install php-fpm php-mysql
nano lemp_playbook.yml
ansible-playbook lemp_playbook.yml
ansible-playbook lemp_playbook.yml --ask-become-pass
php -v
nano lemp_playbook.yml
ansible-playbook lemp_playbook.yml --ask-become-pass
mysql -u root -p
sudo mysql
sudo systemctl stop mysql
sudo systemctl start mysql
sudo systemctl status mysql.service
sudo journalctl -xeu mysql.service
sudo systemctl restart mysql
abdelrahman@abdelrahman:~$ sudo systemctl restart mysql
Job for mysql.service failed because the control process exited with error code.
See "systemctl status mysql.service" and "journalctl -xeu mysql.service" for details.
sudo tail -n 20 /var/log/mysql/error.log
sudo pkill -f mysqld
sudo rm /var/lib/mysql/ibdata1
sudo systemctl restart mysql
sudo tail -n 20 /var/log/mysql/error.log
sudo mkdir -p /var/lib/mysql
sudo chown -R mysql:mysql /var/lib/mysql
sudo systemctl restart mysql
sudo apt-get remove --purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
sudo apt-get install mysql-server
sudo tail -n 50 /var/log/mysql/error.log
sudo ls -l /var/lib/mysql/
sudo rm -rf /var/lib/mysql/*
sudo systemctl start mysql
sudo systemctl status mysql.service
sudo journalctl -xeu mysql.service
sudo mysqld --initialize
sudo systemctl start mysql
sudo systemctl status mysql.service
sudo journalctl -xeu mysql.service
sudo lsof -i :80
nano docker-compose.yml
docker-compose up -d
docker-compose version
sudo apt update
sudo apt install docker-compose-plugin
sudo apt remove docker-compose
sudo apt autoremove
sudo apt update
sudo apt install -y python3-pip
pip3 install --user docker-compose
docker-compose version
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
which docker-compose
nano ~/.bashrc
source ~/.bashrc
docker-compose version
sudo systemctl restart docker
docker-compose up -d
sudo systemctl unmask docker
sudo systemctl start docker
sudo apt-get remove --purge docker docker-engine docker.io containerd runc
sudo apt-get remove --purge docker.io containerd runc
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt-get remove --purge docker docker.io containerd runc
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo journalctl -xeu docker.service
sudo journalctl -u docker.service --since "1 hour ago"
sudo systemctl start docker.socket
sudo systemctl enable docker.socket
sudo systemctl restart docker
sudo systemctl status docker.socket
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
nano Dockerfile
docker build -t my-php-app .
sudo systemctl restart docker
docker ps
docker ps -a
docker stop 1f4a
docker rm 1f4a
docker stop 1fa4b43002f2
docker rm 1fa4b43002f2
sudo systemctl stop docker
mkdir -p nginx src
sudo mkdir -p nginx src
nano nginx/default
sudo nano nginx/default
sudo nano src/index.php
docker build -t my-php-app .
ls
cd ..
ls
cd ..
docker build -t my-php-app .
cd /home/abdelrahman
ls
docker build -t my-php-app .
ls ~/nginx
nano ~/nginx/default
mkdir /home/abdelrahman/nginx
nano /home/abdelrahman/nginx/default
docker build -t my-php-app .
ls
mkdir src
docker build -t my-php-app .
docker run -d -p 80:80 --name my-php-container my-php-app
docker run -d -p 8080:80 --name my-php-container my-php-app
docker stop my-php-container
docker rm my-php-container
docker run -d -p 8080:80 --name my-php-container my-php-app
docker ps
sudo ufw status
sudo ufw allow 8080
docker exec -it my-php-container bash
cat /etc/nginx/sites-available/default
docker restart my-php-container
sudo lsof -i :8080
docker stop my-php-container
docker rm my-php-container
sudo lsof -i :8080
docker run -d -p 8080:80 --name my-php-container my-php-app
docker ps
docker stop my-php-container
docker rm my-php-container
docker ps -a
sudo netstat -tuln | grep :8080
sudo ss -tuln | grep :8080
docker run -d -p 8080:80 --name my-php-container my-php-app
sudo systemctl status docker
sudo rm -rf /var/lib/docker/network
sudo systemctl start docker
docker exec -it my-php-container curl localhost:80
docker run -d -p 9090:80 --name my-php-container my-php-app
docker ps
docker logs my-php-container
docker build -t my-php-app .
docker run -d -p 9090:80 --name my-php-container my-php-app
docker stop my-php-container
docker rm my-php-container
docker run -d -p 9090:80 --name my-php-container my-php-app
docker ps
docker exec -it my-php-container bash
cd ..
cd /home/abdelrahman
service nginx restart
service php8.1-fpm restart
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' my-php-container
sudo nano /etc/nginx/sites-available/default
root /var/www/html;  # تأكد أن هذا المسار هو المسار الصحيح
sudo nano /etc/nginx/sites-available/default
location ~ /\.ht {
}
sudo nginx -t  # لاختبار الإعدادات
sudo systemctl reload nginx  # لإعادة تحميل الإعدادات
sudo nano /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl reload nginx
sudo nano /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl reload nginx
sudo nano /etc/nginx/sites-enabled/default
sudo nginx -t
sudo nano /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl reload nginx
sudo systemctl status nginx
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl reload nginx
sudo systemctl status nginx
sudo apt update
ansible-playbook -i 192.168.1.6, /home/abdelrahman/install_lemp.yml --ask-become-pass
ls -l /home/abdelrahman/php_project/
sudo ls -l /home/abdelrahman/php_project/
mkdir /home/abdelrahman/php_project/
ansible-playbook -i 192.168.1.6, /home/abdelrahman/install_lemp.yml --ask-become-pass
sudo apt-get install python3-pymysql
sudo apt-get install python-mysqldb
ansible-playbook -i 192.168.1.6, /home/abdelrahman/install_lemp.yml --ask-become-pass
sudo mysql
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo systemctl status mysql
sudo systemctl start mysql
sudo journalctl -xeu mysql.service
sudo cat /var/log/mysql/error.log
ps aux | grep mysql
sudo kill 17342
sudo systemctl restart mysql
mysql -u root -p
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo mkdir -p /var/run/mysqld
sudo chown -R mysql:mysql /var/run/mysqld
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo systemctl restart mysql
mysql -u root -p
sudo systemctl status mysql
sudo journalctl -xeu mysql.service
sudo cat /var/log/mysql/error.log
ps aux | grep mysqld
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo killall mysqld
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo systemctl restart mysql
mysql -u root
sudo systemctl status mysql.service
sudo journalctl -xeu mysql.service
sudo tail -n 50 /var/log/mysql/error.log
sudo killall -9 mysqld
sudo rm -f /var/lib/mysql/ibdata1.lock
sudo rm -f /var/lib/mysql/ib_logfile*
sudo chown -R mysql:mysql /var/lib/mysql
sudo chmod -R 755 /var/lib/mysql
sudo systemctl start mysql
sudo systemctl status mysql
mysql -u root -p
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo chmod 755 /var/run/mysqld
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo systemctl stop mysql
sudo systemctl start mysql
sudo systemctl status mysql.service
sudo journalctl -xeu mysql.service
sudo tail -n 50 /var/log/mysql/error.log
sudo killall -9 mysqld
sudo rm -f /var/lib/mysql/ibdata1.lock
sudo chown -R mysql:mysql /var/lib/mysql
sudo chmod -R 755 /var/lib/mysql
sudo systemctl restart mysql
sudo systemctl status mysql
mysql -u root -p
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo chmod 755 /var/run/mysqld
sudo mysqld_safe --skip-grant-tables &
mysql -u root
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables --skip-networking &
mysql -u root
sudo systemctl stop mysql
ps aux | grep mysqld
sudo kill -9 <pid>
sudo kill -9 23521
sudo systemctl start mysql
sudo systemctl status mysql.service
sudo journalctl -xeu mysql.service
sudo cat /var/log/mysql/error.log
sudo less /var/log/mysql/error.log
sudo mv /home/abdelrahman/nginx_conf /etc/nginx/sites-available/mywebsite
ansible-playbook -i 192.168.1.6, /home/abdelrahman/install_lemp.yml --ask-become-pass
sudo touch nginx_config /etc/nginx/sites-available/mywebsite
sudo nano nginx_config /etc/nginx/sites-available/mywebsite
sudo kill -9 4563 4565 4566 4723
ps aux | grep mysql
sudo systemctl start mysql
sudo systemctl status mysql
sudo mysql
sudo mysqld_safe --skip-grant-tables &
sudo mysql
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
sudo mysql
sudo mkdir /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo mysqld_safe --skip-grant-tables &
sudo mysql
sudo systemctl stop mysql
sudo systemctl start mysql
sudo systemctl status mysql.service
sudo journalctl -xeu mysql.service
sudo cat /var/log/mysql/error.log
sudo dmesg | tail -n 20
sudo ps aux | grep mysql
sudo kill 7378
sudo kill 8271
sudo ps aux | grep mysql
sudo rm /var/lib/mysql/ibdata1
sudo rm /var/lib/mysql/ib_logfile0
sudo rm /var/lib/mysql/ib_logfile1
sudo systemctl start mysql
sudo systemctl status mysql
sudo cat /var/log/mysql/error.log
sudo journalctl -xeu mysql.service
sudo systemctl stop mysql
sudo ls /var/lib/mysql/ibdata1
sudo systemctl stop mysql
sudo rm -f /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile1
sudo chown -R mysql:mysql /var/lib/mysql
sudo chmod -R 755 /var/lib/mysql
sudo systemctl start mysql
sudo systemctl status mysql.service
sudo journalctl -xeu mysql.service
sudo cat /var/log/mysql/error.log
clear
ps aux | grep mysqld
sudo systemctl start mysql
sudo chown -R mysql:mysql /var/lib/mysql
sudo chmod -R 755 /var/lib/mysql
grep datadir /etc/mysql/my.cnf
ls -l /var/lib/mysql/ibdata1
grep datadir /etc/mysql/my.cnf
sudo mysqld --initialize --user=mysql --datadir=/var/lib/mysql
sudo systemctl start mysql
sudo systemctl status mysql
sudo chown -R mysql:mysql /var/lib/mysql
sudo chmod -R 755 /var/lib/mysql
sudo mysqld --initialize --user=mysql --datadir=/var/lib/mysql
sudo systemctl start mysql
sudo nano /etc/mysql/my.cnf
sudo lsof -i :3306
sudo mysqld --datadir=/var/lib/mysql
sudo mysqld --user=mysql --datadir=/var/lib/mysql
sudo systemctl start mysql
ls -l /var/lib/mysql/ibdata1
sudo mysqld --initialize --user=mysql --datadir=/var/lib/mysql
sudo rm -rf /var/lib/mysql/*
sudo mysqld --initialize --user=mysql --datadir=/var/lib/mysql
sudo chown -R mysql:mysql /var/lib/mysql
sudo chmod -R 755 /var/lib/mysql
sudo systemctl start mysql
sudo systemctl status mysql
sudo mysql -u root -p
sudo systemctl status mysql
grep socket /etc/mysql/my.cnf
ls -l /var/lib/mysql/mysql.sock
sudo mysql -u root -p --socket=/var/lib/mysql/mysql.sock
sudo cat /var/log/mysql/error.log
clear
ls -l /var/lib/mysql/mysql.sock
sudo mysql -u root -p --socket=/var/lib/mysql/mysql.sock
mysqld --initialize
sudo cat /var/log/mysql/error.log | grep "temporary password"
sudo rm -rf /var/lib/mysql/*
sudo mysqld --initialize --user=mysql --datadir=/var/lib/mysql
sudo cat /var/log/mysql/error.log | grep "temporary password"
sudo mysql -u root -p --socket=/var/lib/mysql/mysql.sock
sudo systemctl status mysql
ls -l /var/lib/mysql/mysql.sock
sudo grep socket /etc/mysql/my.cnf
ps aux | grep mysql
sudo mysql -u root -p -h 127.0.0.1
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
sudo mysql -u root
sudo systemctl stop mysql
sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-* -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo rm -rf /etc/mysql /var/lib/mysql
sudo rm -rf /var/log/mysql
sudo rm -rf /var/run/mysqld
sudo apt-get update
sudo apt-get install mysql-server -y
sudo systemctl start mysql
sudo systemctl status mysql
ansible-playbook -i 192.168.1.6, /home/abdelrahman/install_lemp.yml --ask-become-pass
sudo mysql
ansible-playbook -i 192.168.1.6, /home/abdelrahman/install_lemp.yml --ask-become-pass
sudo mysql
                                                                                                                                                                                                                            sudo apt update
sudo apt install openjdk-11-jdk -y
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
abdelrahman@abdelrahman:~$ sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
Job for jenkins.service failed because the control process exited with error code.
See "systemctl status jenkins.service" and "journalctl -xeu jenkins.service" for details.
Synchronizing state of jenkins.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable jenkins
× jenkins.service - Jenkins Continuous Integration Server
Feb 17 19:21:15 abdelrahman systemd[1]: jenkins.service: Scheduled restart job, restart counter is at 5.
Feb 17 19:21:15 abdelrahman systemd[1]: Stopped Jenkins Continuous Integration Server.
Feb 17 19:21:15 abdelrahman systemd[1]: jenkins.service: Start request repeated too quickly.
Feb 17 19:21:15 abdelrahman systemd[1]: jenkins.service: Failed with result 'exit-code'.
Feb 17 19:21:15 abdelrahman systemd[1]: Failed to start Jenkins Continuous Integration Server.
Feb 17 19:21:22 abdelrahman systemd[1]: jenkins.service: Start request repeated too quickly.
Feb 17 19:21:22 abdelrahman systemd[1]: jenkins.service: Failed with result 'exit-code'.
Feb 17 19:21:22 
java -version
sudo update-alternatives --config java
sudo netstat -tulnp | grep 8080
journalctl -xeu jenkins.service
sudo cat /var/log/jenkins/jenkins.log
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo apt update
sudo apt purge jenkins -y
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
journalctl -xeu jenkins.service | tail -50
sudo cat /var/log/jenkins/jenkins.log
sudo -u jenkins java -jar /usr/share/java/jenkins.war
sudo apt update
sudo apt install openjdk-17-jdk -y
sudo update-alternatives --config java
java -version
sudo systemctl daemon-reload
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo netstat -tulnp | grep 8080
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo systemctl status nginx
sudo apt update
sudo apt install git -y
git --version
git config --global user.name "abdo4v" 
git config --global user.email "abdoo4v@gmail.com" 
ls
git init                  # إنشاء مستودع Git محلي
git add .                 # إضافة جميع الملفات إلى Git
