#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o apache2..."

apt-get install apache2 -y

echo "Instalando o unzip..."

apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação paullohdiniz/linux-site-dio..."

cd /tmp
wget https://github.com/paullohdiniz/linux-site-dio.git
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
