#!/bin/bash

##CRIANDO PASTAS|DIRETÓRIOS|USUÁRIOS SCRIPT

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"

groupadd  GRP_ADM
groupadd  GRP_VEN
groupadd  GRP_SEC

echo "Criando Usuários"

useradd -c "Carlos Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM carlos

useradd -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM maria

useradd -c "Joao Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM joao

useradd -c "Debora Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN debora

useradd -c "Sebastiana Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN sebastiana

useradd -c "Roberto Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN roberto

useradd -c "Josefina Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC josefina

useradd -c "Amanda Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC amanda

useradd -c "Rogerio Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC rogerio

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sec
chmod 770 /sec
chmod 777 /publico

echo "FIM..."
