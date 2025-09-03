#!/bin/bash

# Este script filtra as mensagens do kernel para encontrar erros, falhas e avisos.

echo "-------------------------------------------------"
echo "         Erros e Avisos do Kernel"
echo "-------------------------------------------------"

# O comando 'dmesg' exibe as mensagens do buffer do kernel.
# Usamos 'grep -iE' para filtrar essas mensagens:
# -i: Ignora a diferença entre maiúsculas e minúsculas (case-insensitive).
# -E: Usa expressão regular estendida para buscar por 'error' OU 'fail' OU 'warn'.
# A opção '--color=always' força o grep a colorir as palavras encontradas.
dmesg | grep -iE --color=always '(error|fail|warn)'

echo "-------------------------------------------------"
echo "Busca concluída. Se nenhuma linha foi exibida, nenhum erro foi encontrado."