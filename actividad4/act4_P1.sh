#!/bin/bash

pipe=./mypipe
pipe2=./mypipe2

trap "rm -f $pipe2 $pipe" EXIT

if [[ ! -p $pipe ]]; then
    mkfifo $pipe
fi
if [[ ! -p $pipe2 ]]; then
    mkfifo $pipe2
fi

while true
do
    if read line <$pipe; then
        if [[ "$line" == 'Persona 2: bye' ]]; then
            break
        fi
        echo $line
        read -p "Tu: " mensaje
        echo "Persona 1: $mensaje" >$pipe2
    fi
done

echo "Chat finalizado"