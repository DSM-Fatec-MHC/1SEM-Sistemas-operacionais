#!/bin/bash

echo "Digite o nome do primeiro arquivo: "
read arquivo1

echo "Digite o nome do segundo arquivo: "
read arquivo2

if diff -q "$arquivo1" "$arquivo2"; then
    echo "Os arquivos são iguais"
else
    echo "Os arquivos são diferentes"
fi
