#!/bin/bash

# Este script exibe a data e a hora do último boot do sistema.

echo "-------------------------------------"
echo "  Data e Hora do Último Boot"
echo "-------------------------------------"

# O comando 'who -b' exibe a informação do último boot.
# A saída é então processada pelo 'awk' para formatar a mensagem.
# $3 contém a data (ex: 2025-09-03)
# $4 contém a hora (ex: 10:15)
who -b | awk '{print "O sistema foi iniciado em:", $3, "às", $4}'

echo "-------------------------------------"


#para executar
# chmod +x last_boot.sh
# ./last_boot.sh