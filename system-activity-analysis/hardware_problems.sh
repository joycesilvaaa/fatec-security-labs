#!/bin/bash

# Este script busca por mensagens nos logs do kernel que possam
# indicar problemas com dispositivos de hardware.

echo "-------------------------------------------------"
echo "   Verificando Logs por Problemas de Hardware"
echo "-------------------------------------------------"

# Lista de palavras-chave para procurar.
# A busca é case-insensitive (ignora maiúsculas/minúsculas).
KEYWORDS="(disk|usb|sata|nvme|memory|i/o error|hardware error|failure)"

# 'dmesg' lê o buffer de mensagens do kernel.
# 'grep -iE --color=always' busca pelas palavras-chave, ignorando
# a capitalização e colorindo os resultados para fácil visualização.
dmesg | grep -iE --color=always "$KEYWORDS"

echo "-------------------------------------------------"
echo "Busca concluída. As linhas acima podem indicar problemas de hardware."