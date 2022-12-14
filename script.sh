#!/bin/bash

# Infraestrutura como código
# Script de Criação de Usuarios. Diretórios e Permissões

echo "Criando Diretórios"
mkdir /public /adm /ven /sec

echo "Criando Grupos"
groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando usuários e adicionando aos grupos"
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

echo "Alterando permissões das pastas"
chmod 777 /public/
chmod 770 /adm/ /ven/ /sec/

echo "Atribuindo root aos grupos"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
