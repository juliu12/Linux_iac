#!/bin/bash

echo "Criando usuários do sistema"

useradd guest1 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Server1)
passwd guest1 -e

useradd guest2 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Server1)
passwd guest2 -e

useradd guest3 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Server1)
passwd guest3 -e

useradd guest4 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Server1)
passwd guest4 -e

echo "Finalizado!"

