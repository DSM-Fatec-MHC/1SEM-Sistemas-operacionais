#!/bin/bash
clear

echo "Insira a opção que deseja: "
echo "1 - Procurar um arquivo utilizando find"
echo "2 - Procurar um comando utilizando whereis"
echo "3 - Procurar um arquivo utilizando locate"
read op

case $op in
	1) 
		read -p "Digite o nome do arquivo:" arquivo
		find / -name "$arquivo" 2>/dev/null
		;;
	2)
		read -p "Digite o nome do comando:" comando
		whereis "$comando"
		;;
	3)
		read -p "Digite o nome do arquivo:" arquivo
		locate "$arquivo"
		;;
	*)
		echo "Opção inválida!"
    ;;
esac 
