#!/bin/bash

echo "Digite o processo que deseja procurar:"
read processo

resultado=$(ps aux | grep "$processo" | grep -v grep)

if [ -n "$resultado" ]; then
    echo "Processos encontrados:"
    echo "$resultado"
else
    echo "Nenhum processo encontrado."
fi
