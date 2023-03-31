#!/bin/bash


echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Designando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim de processo..."

