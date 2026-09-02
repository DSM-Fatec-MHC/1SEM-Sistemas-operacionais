#!/bin/bash
clear
echo "A lista abaixo mostra todos os processos e PIDs identificadores"
echo "Nessa tabela tambem é apresentado consumo de memória e tempo de vida do processo"
read -p "Pressione [Enter] para continuar..."
echo ""
ps aux 
