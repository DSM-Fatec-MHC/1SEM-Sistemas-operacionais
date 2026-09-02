#!/bin/bash
clear
read -p "Insira o nome de usuário: " user 

if grep "$user" /etc/passwd; then
		clear
		echo "Usuário $user"
    echo "Usuário encontrado!" 
else
		clear
		echo "Usuário $user"
		echo "Usuário não encontrado"
fi
