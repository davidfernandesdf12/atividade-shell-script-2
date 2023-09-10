#!/bin/bash

nome_arquivo="palavras.txt"

if [ -f "palavras.txt" ]; then
    numero_palavras=$(wc -w < "$nome_arquivo")

    echo "o aquivo $nome_arquivo tem $numero_palavras palavras"
else
    echo "o arquivo $nome_arquivo não exite!"
   
fi