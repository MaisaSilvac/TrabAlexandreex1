#!/bin/bash

# Número de pastas a serem criadas
num_pastas=5

# Contador de pastas criadas
contador=0

# Loop para criar as pastas
while [ $contador -lt $num_pastas ]
do
    # Gerar um nome aleatório do dicionário Aurélio
    nome=$(shuf -n 1 dici_aurelio.txt)

    # Criar a pasta com o nome aleatório e atribuir permissão de leitura
    mkdir "$nome"
    chmod 444 "$nome"

    # Incrementar o contador
    contador=$((contador + 1))
done

echo "Criação de pastas concluída."
