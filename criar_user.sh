#!/bin/bash

echo "Criando Usuários do Sistema..."

useradd -c "Usuário convidado 1" -s /bin/bash -m -p $(openssl passwd Senha123) guest10
passwd guest10 -e

useradd -c "Usuário convidado 2" -s /bin/bash -m -p $(openssl passwd Senha123) guest11
passwd guest11 -e

useradd -c "Usuário convidado 3" -s /bin/bash -m -p $(openssl passwd Senha123) guest12
passwd guest12 -e



echo "Finalizado!!"


