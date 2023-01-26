#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Uso: 2.sh [valor]"
    exit 1
fi

valor=$2

if ! [[ $valor =~ ^[0-9]+$ ]]; then
    echo "El valor introducido no es un número."
    exit 1
fi

if [ $valor -le 0 ]; then
    echo "El valor introducido debe ser mayor que 0."
    exit 1
fi

if [ $(($valor % 2)) -eq 0 ]; then
    echo "El valor es par."
else
    echo "El valor es impar."
fi
