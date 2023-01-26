#!/bin/bash
while true; do
  read -p "Ingresa una nota: " nota

  if ! [[ "$nota" =~ ^[0-9]+$ ]]; then
    echo "El valor introducido no es un número."
    continue
  fi

  if [ $nota -lt 0 ] || [ $nota -gt 10 ]; then
    echo "La nota debe ser un número entre 0 y 10."
    continue
  fi

  if [ $nota -lt 5 ]; then
    echo "Suspendido"
  elif [ $nota -lt 6 ]; then
    echo "Aprobado"
  elif [ $nota -lt 7 ]; then
    echo "Bien"
  elif [ $nota -lt 9 ]; then
    echo "Notable"
  else
    echo "Sobresaliente"
  fi
  break
done
