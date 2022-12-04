#!/bin/bash

echo "Atualizando o servidor..."
apt-get update -y && apt-get upgrade -y
apt-get install unzip wget -y
apt-get install systemctl apache2 -y

echo "Importando o projeto..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Reiniciando o servidor apache"
systemctl restart apache2