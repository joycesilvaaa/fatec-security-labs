#!/bin/bash

# Este script encontra e lista todos os eventos de desligamento (shutdown)
# e reinicialização (reboot) registrados pelo systemd.

echo "-------------------------------------------------"
echo "  Eventos de Desligamento e Reinicialização"
echo "-------------------------------------------------"

# 'journalctl' consulta os logs do systemd.
# '--list-boots' mostra um histórico de todas as inicializações.
# O número negativo (-1, -2) representa o boot. Um boot termina quando o próximo começa.
# A saída mostra a data/hora de início e fim de cada sessão de boot.
journalctl --list-boots --no-pager

echo "-------------------------------------------------"
echo "A tabela acima mostra o histórico de inicializações."
echo "A data de término de um boot indica um desligamento ou reinicialização."