#!/bin/bash

pipe=./mypipe
pipe2=./mypipe2

trap "rm -f $pipe $pipe2" EXIT

if [[ ! -p $pipe ]]; then
    echo "Persona 2 se desconectó. Finalizando chat."
    exit 1
fi

if [[ ! -p $pipe2 ]]; then
    echo "Persona 1 se desconectó. Finalizando chat."
    exit 1
fi

while true
do 
    read -p "Tu: " mensaje
    echo "Persona 2: $mensaje" >$pipe

    if read line <$pipe2; then
        if [[ "$line" == 'Persona 1: bye' ]]; then
            break
        fi
        echo $line
    fi
done

echo "Chat finalizado"