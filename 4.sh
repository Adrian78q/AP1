#!/bin/bash
while true; do
  #echo "Introduce el día numérico del mes (1-30):"
  #read dia
  read -p "Introduce el día numérico del mes (1-30):" dia
  if [[ $dia =~ ^[0-9]+$ ]]; then
    if (( dia >= 1 && dia <= 30 )); then
      semana=( "lunes" "martes" "miércoles" "jueves" "viernes" "sábado" "domingo" )
      echo "El día es ${semana[$(( (dia-1) % 7 ))]}"
      break
    else
      echo "El valor debe estar entre 1 y 30"
    fi
  else
    echo "El valor debe ser un número"
  fi
done
