#!/bin/bash
clear
read -p "Insira o nome do arquivo a ser alterado: " arquivo
echo "-----Opções de permissão-----"
echo "1 - 644"
echo "2 - 755"
echo "3 - 700"
echo "4 - 720"
echo "5 - Personalizar"
read -p "Insira a opção desejada: " op
case $op in
	1)
		chmod 644 $arquivo
		echo "Permissão atualizada com sucesso!"
	;;
	2)
		chmod 755 $arquivo
		echo "Permissão atualizada com sucesso!"
	;;
	3)
		chmod 700 $arquivo
		echo "Permissão atualizada com sucesso!"
	;;
	4)
		chmod 720 $arquivo
		echo "Permissão atualizada com sucesso!"
	;;
	5)
		read -p "Insira a permissão: " permissao
		chmod $permissao $arquivo
		echo "Permissão atualizada com sucesso!"
	;;
	*)
		echo "Opção inválida!"
		;;
esac
ls -l arquivo
