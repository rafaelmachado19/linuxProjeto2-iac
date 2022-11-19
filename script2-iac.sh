#!/bin/bash

echo "Atualizando o servidor..."
apt-get update 
apt-get upgrade -y

echo "Baixando apache2, unzip e arquivo HTML, e copiando arquivos da aplicação..."
apt-get install apache2 unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

