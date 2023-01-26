#!/bin/bash
#echo "¿Cuántos números aleatorios quieres generar?"
#read num_aleatorios
#echo "¿Valor mínimo?"
#read min
#echo "¿Valor máximo?"
#read max
read -p "¿Cuántos números aleatorios quieres generar?" num_aleatorios
read -p "¿Valor mínimo?" min
read -p "¿Valor máximo?" max

for ((i=1;i<=$num_aleatorios;i++))
do
    aleatorio=$((RANDOM%($max-$min+1)+$min))
    echo $aleatorio
done
