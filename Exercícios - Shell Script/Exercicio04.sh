#!/bin/bash
clear

echo "Indique o nome do arquivo atual: "
read arquivo

echo "Indique o diretório de destino:"
read destino

mv "$arquivo" "$destino"
echo "Movido com sucesso!" 
