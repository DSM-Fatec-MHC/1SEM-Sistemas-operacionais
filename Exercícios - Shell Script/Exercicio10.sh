#!/bin/bash

echo "Digite o nome do usuário:"
read usuario

if grep -q "^$usuario:" /etc/passwd; then

    nome=$(grep "^$usuario:" /etc/passwd | cut -d: -f1)
    home=$(grep "^$usuario:" /etc/passwd | cut -d: -f6)
    espaco=$(du -sh "$home" 2>/dev/null | cut -f1)

    echo "Nome do usuário: $nome"
    echo "Diretório de trabalho: $home"
    echo "Espaço utilizado no disco: $espaco"

else
    echo "Usuário '$usuario' não existe no sistema."
fi
