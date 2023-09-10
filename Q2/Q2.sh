#!/bin/bash

for i in {1..10}; do
  nome_pasta="pasta$i"
  if [ ! -d "$nome_pasta" ]; then
    mkdir $nome_pasta
    echo "$nome_pastacriada com sucesso!"
  else 
    echo "$nome_pasta já exite!"
  fi

done