#!/bin/bash
suma=0
contador=0
echo "Ingresa un valor numerico (0 para terminar):"
read valor

while [ $valor -ne 0 ]; do
    suma=$((suma + valor))
    contador=$((contador + 1))
    echo "Ingresa un valor numerico (0 para terminar):"
    read valor
done

if [ $contador -eq 0 ]; then
   echo "No se ha introducido ningún valor."
else
    echo "La suma total de valores introducidos es: $suma"
    echo "El valor medio es: $((suma / contador))"
fi
