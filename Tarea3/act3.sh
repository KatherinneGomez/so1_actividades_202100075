#!/bin/bash

while [ true ]
do
    DIA=`date +"%d/%m/%Y"`
    HORA=`date +"%H:%M:%S"`
    echo "Hola mundo!! Hoy es el $DIA y la hora actual es $HORA"
    sleep 1
done

#etc/systemd/system