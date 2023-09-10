#!/bin/bash

echo "Qual a quantidade de caracteres da sua senha? "

read tamanho_senha

caracteres_aleatorios=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c "$tamanho_senha")

echo Senha: $caracteres_aleatorios