#!/bin/bash

#setear la variable GITHUB_USER
export GITHUB_USER="KatherinneGomez"

#Consultar la URL concatenando el valor de la variable GITHUB_USER al final, guarda la respuesta en un archivo
curl https://api.github.com/users/$GITHUB_USER > consulta.json

#Se imprime el mensaje, los valores se consultan leyendo el archivo json 
echo "Hola $GITHUB_USER. User ID: $(jq '.id' consulta.json). Cuenta fue creada el: $(jq '.created_at' consulta.json)."

#Se guarda en una variable la fecha actual
fecha=$(date +"%d-%m-%y")

#Se crea una carpeta cuyo nombre es la fecha actual en la carpeta tmp, si ya existe continuara sin mensaje de error
mkdir -p /tmp/$fecha

#se guarda el mensaje anterior en un log file
echo "Hola $GITHUB_USER. User ID: $(jq '.id' consulta.json). Cuenta fue creada el: $(jq '.created_at' consulta.json)." >> /tmp/$fecha/saludos.log

#Para crear un crontab que ejecute el script cada 5 minutos se debe:
# - ejecutar en la terminal el comando crontab -e
# - al final del documento agregar: */5  * * * * rutaDelScrit
# - guardar los cambios