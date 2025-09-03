#!/bin/bash

# Este script lista os serviços que foram iniciados ou parados recentemente,
# analisando os logs do systemd.

echo "------------------------------------------------------------------"
echo "        Histórico de Status de Serviços (systemd)"
echo "------------------------------------------------------------------"
echo "Data/Hora                 Evento"
echo "------------------------------------------------------------------"

# 'journalctl -u '*.service'' foca nos logs de todas as unidades de serviço.
# '--no-pager' garante que a saída vá direto para o pipe, sem abrir o 'less'.
# 'grep -E' filtra as linhas que contêm "Started" ou "Stopped".
# 'awk' formata a saída para mostrar a data, hora e a mensagem do evento.
journalctl -u '*.service' --no-pager | grep -E " (Started|Stopped) " | \
    awk '{
        # Concatena os 3 primeiros campos (Mês, Dia, Hora)
        timestamp = $1 " " $2 " " $3;
        
        # Inicia a mensagem a partir do 6º campo (onde começa "Started" ou "Stopped")
        message = "";
        for (i = 6; i <= NF; i++) {
            message = message $i " ";
        }
        
        # Imprime a data/hora e a mensagem formatada
        printf "%-25s %s\n", timestamp, message;
    }'

echo "------------------------------------------------------------------"