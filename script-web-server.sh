#!/bin/bash

echo "Atualizando Servidor..."

apt-get update
apt-get upgrade

echo "********************************************* "
echo "Atualizacao Finalizada."

apt-get install apache2 -y
apt-get install unzip -y

echo "Abrindo Diretorio /tmp"
cd /tmp
echo "Baixando Arquivo Online"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

