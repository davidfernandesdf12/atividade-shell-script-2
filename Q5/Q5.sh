#!/bin/bash

echo "Escolha uma opcão:"
echo -e " 1 - Adição\n 2 - Subtracão\n 3 - Multiplicação\n 4 - Divisão"

read opcao

echo "Digite o primeiro valor: "
read numero1

echo "Digite o segundo valor: "
read numero2

addition() {
    resultado=$(echo "$numero1 + $numero2" | bc)
    echo "Resultado: $resultado"
}

subtraction(){
    resultado=$(echo "$numero1 - $numero2" | bc)
    echo "Resultado: $resultado"
}

multiplication(){
    resultado=$(echo "$numero1 * $numero2" | bc)
    echo "Resultado: $resultado"
}

division(){
    resultado=$(echo "$numero1 / $numero2" | bc)
    echo "Resultado: $resultado"
}

case "$opcao" in
  "1")
    addition
    ;;
  "2")
    subtraction
    ;;
  "3")
    multiplication
    ;;
  "4")
    division
    ;;
  *)
    echo "Opção inválida."
    # Instruções para opções não reconhecidas
    ;;
esac
