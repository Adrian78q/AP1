#!/bin/bash
if [ $# -ne 3 ]; then
  echo "Se requieren 3 argumentos: el primer valor, el operador (+, -, *, /) y el segundo valor."
  exit 1
fi
valor1=$1
operador=$2
valor2=$3
if ! [[ "$valor1" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "El primer valor debe ser un número válido."
  exit 1
fi
if ! [[ "$valor2" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "El segundo valor debe ser un número válido."
  exit 1
fi
resultado=0
case "$operador" in
  "+") resultado=$(expr $valor1 + $valor2) ;;
  "-") resultado=$(expr $valor1 - $valor2) ;;
  "*") resultado=$(expr $valor1 \* $valor2) ;;
  "/")
    if [[ $valor2 -eq 0 ]]; then
      echo "Error: no se puede dividir entre 0."
      exit 1
    fi
    resultado=$(expr $valor1 / $valor2)
    ;;
  *)
    echo "Error: el operador debe ser +, -, * o /."
    exit 1
    ;;
esac
echo "Resultado: $resultado"
