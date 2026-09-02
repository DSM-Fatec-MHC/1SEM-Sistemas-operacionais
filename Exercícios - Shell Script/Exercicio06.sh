#!/bin/bash
clear

read -p "Insira a informação a ser buscada: " userInput
read -p "Insira o nome do arquivo para buscar: " arquivo
if grep "$userInput" ./$arquivo; then
		clear
    echo "Informação encontrada no arquivo!" 
else 
		clear
    echo "Informação não encontrada no arquivo!" 
fi
