#!/bin/bash

echo "Atualizando Servidor..."
yum update

yum upgrade -y

yum install httpd unzip -y


echo "Baixando e atualizando arquivos da aplicação..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/
