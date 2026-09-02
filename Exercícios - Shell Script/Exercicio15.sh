#!/bin/bash 
clear
sair=0

while sair=0; do 
read -p "Insira um PID para ser encerrado: " pidNum
nomeProcesso=$(cat /proc/$pidNum/comm)
echo "Deseja realmente encerrar o processo $nomeProcesso?"
read -p "1 - Sim  |  2 - Não " op

	case op in 
		1)
			kill $pidNum
			sair=1 
		;;
		2)
			echo "Operação cancelada"
		;;
		*)
			echo "Opção inválida! "
		;;
	esac 
	
	echo "Deseja tentar novamente?"
	read -p "1 - Sim  |  2 - Não " op
	
	case op in 
		1)
			sair=0
			;;
		2) 
			sair=1
			;;
		*) 
			sair=1
			;;
		esac
done
