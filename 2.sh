#!/bin/bash
while true; do
  echo "Ingresa un valor mayor que 0:"
  read valor
  if [[ $valor =~ ^[0-9]+$ ]]; then
    if (( valor > 0 )); then
      if (( valor % 2 == 0 )); then
        echo "El valor es par"
      else
        echo "El valor es impar"
      fi
      break
    else
      echo "El valor debe ser mayor que 0"
    fi
  else
    echo "El valor debe ser un número"
  fi
done
