#!/bin/bash
clear

echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo ""
echo "===== CALCULADORA ====="
echo "1. Soma"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
echo "5. Sair"
echo "======================="
echo "Escolha uma opção:"
read opcao

case $opcao in
    1)
        resultado=$(echo "$num1 + $num2" | bc)
        echo "Resultado: $resultado"
        ;;

    2)
        resultado=$(echo "$num1 - $num2" | bc)
        echo "Resultado: $resultado"
        ;;

    3)
        resultado=$(echo "$num1 * $num2" | bc)
        echo "Resultado: $resultado"
        ;;

    4)
        if [ "$num2" -eq 0 ]; then
            echo "Erro: não é possível dividir por zero."
        else
            resultado=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Resultado: $resultado"
        fi
        ;;

    5)
        echo "Saindo..."
        ;;

    *)
        echo "Opção inválida!"
        ;;
esac
