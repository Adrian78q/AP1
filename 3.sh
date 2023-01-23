#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Este script requiere un argumento mayor que 0"
  echo "Ejemplo de uso: $0 5"
  exit 1
fi
valor=$1

if [[ $valor =~ ^[0-9]+$ ]]; then
  if (( valor > 0 )); then
    for i in $(seq 0 $valor); do
      echo $i
    done
  else
    echo "El valor debe ser mayor que 0"
    exit 1
  fi
else
  echo "El valor debe ser un número"
  exit 1
fi
