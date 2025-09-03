#!/bin/bash

# Este script encontra e lista todos os eventos de desligamento (shutdown)
# e reinicialização (reboot) registrados no sistema.

echo "-------------------------------------------------"
echo "  Eventos de Desligamento e Reinicialização"
echo "-------------------------------------------------"

# O comando 'last -x' mostra um log de logins, logouts e eventos do sistema.
# Usamos 'grep -E' para filtrar e exibir apenas as linhas que contêm
# as palavras "shutdown" ou "reboot".
last -x | grep -E "(shutdown|reboot)"

echo "-------------------------------------------------"