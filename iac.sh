#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /info
mkdir /sec

echo "Criando grupos de usuários"

groupadd ADM 
groupadd INFO
groupadd SEC

echo "Criando usuários"

useradd admin1 -m -s /bin/bash -p $(openssl passwd -crypt Server1) -G ADM 
useradd admin2 -m -s /bin/bash -p $(openssl passwd -crypt Server1) -G ADM 
useradd admin3 -m -s /bin/bash -p $(openssl passwd -crypt Server1) -G ADM 

useradd info1 -m -s /bin/bash -p $(openssl passwd -crypt Server1) -G INFO
useradd info2 -m -s /bin/bash -p $(openssl passwd -crypt Server1) -G INFO
useradd info3 -m -s /bin/bash -p $(openssl passwd -crypt Server1) -G INFO

useradd sec1 -m -s /bin/bash -p $(openssl passwd -crypt Server1) - G SEC
useradd sec2 -m -s /bin/bash -p $(openssl passwd -crypt Server1) - G SEC
useradd sec3 -m -s /bin/bash -p $(openssl passwd -crypt Server1) - G SEC

echo "Permissões dos diretórios"

chown root:ADM  /adm
chown root:INFO /info
chown root:SEC /sec

chmod 770 /adm
chmod 770 /info
chmod 770 /sec
chmod 777 /publico

echo "Finish"

