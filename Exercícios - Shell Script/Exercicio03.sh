#!/bin/bash
clear

echo "Indique o nome do arquivo atual: "
read nomeAtual

echo "Indique o novo nome: "
read nomeNovo

mv "$nomeAtual" "$novoNome"
echo "Realizado troca com sucesso!" 
