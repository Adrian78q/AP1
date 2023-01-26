#!/bin/bash
#echo "Introduce un valor mayor que 0:"
#read valor
read -p "Introduce un valor mayor que 0:" valor
if [[ $valor =~ ^[0-9]+$ ]]; then
  if (( valor > 0 )); then
    for i in $(seq 0 $valor); do
      echo $i
    done
  else
    echo "El valor debe ser mayor que 0"
    echo "Ejemplo de uso: si valor = 5 --> 0 1 2 3 4 5"
    echo "Ejemplo de uso: si valor = 10 --> 0 1 2 3 4 5 6 7 8 9 10"
  fi
else
  echo "El valor debe ser un número"
  echo "Ejemplo de uso: si valor = 5 --> 0 1 2 3 4 5"
  echo "Ejemplo de uso: si valor = 10 --> 0 1 2 3 4 5 6 7 8 9 10"
fi
