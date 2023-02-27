#!/bin/bash

echo "Iniciando o Script de Configuracao da Maquina..."

echo "Criando os diretorios na maquina..."

echo "Criando diretorio /publico"
mkdir public
echo "Criando diretorio /adm"
mkdir adm
echo "Criando diretorio /ven"
mkdir ven
echo "Criando diretorio /sec"
mkdir sec

echo "Criacao de diretorios finalizada!!!"
echo "========="
echo " "

echo "Criando grupos"

echo "Criando o grupo GRP_ADM"
groupadd GRP_ADM
echo "Criando o grupo GRP_VEN"
groupadd GRP_VEN
echo "Criando o grupo GRP_SEC"
groupadd GRP_SEC

echo "Criacao de Grupos Finalizada!!!"
echo "========="
echo " "

echo "Criando usuarios..."

echo "Usuarios do Grupo GRP_ADM"
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -6 Desafio123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -6 Desafio123) -G GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -6 Desafio123) -G GRP_ADM

echo "Usuarios do Grupo GRP_VEN"

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -6 Desafio123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -6 Desafio123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -6 Desafio123) -G GRP_VEN

echo "Usuarios do Grupo GRP_SEC"

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -6 Desafio123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -6 Desafio123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -6 Desafio123) -G GRP_SEC

echo "Criacao de Usuarios finalizada..."

echo " "
echo "=========="

echo "Especificando Permissoes nos Diretorios"

chown root:GRP_ADM /desafio-dio/adm
chown root:GRP_VEN /desafio-dio/ven
chown root:GRP_SEC /desafio-dio/sec

echo "Configurando Diretorio publico..."

chmod 770 /desafio-dio/adm
chmod 770 /desafio-dio/ven
chmod 770 /desafio-dio/sec
chmod 777 /desafio-dio/public



