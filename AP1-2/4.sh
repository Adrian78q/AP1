#!/bin/bash
read -p "Introduce la cantidad de litros consumidos: " litros
if [ $litros -le 50 ]; then
    coste=20
elif [ $litros -le 200 ]; then
    coste=$(((litros-50)*0,2 + 1000))
else
    coste=$(((litros-200)*0,1 + 1000 + 3000))
fi

echo "El coste total es de $coste euros."
