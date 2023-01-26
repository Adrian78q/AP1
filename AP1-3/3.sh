#!/bin/bash
palabras=()
while true; do
  read -p "Introduce palabras (escribe 'fin' para terminar): " palabra
  if [ "$palabra" = "fin" ]; then
    break
  fi
  palabras+=($palabra)
done
echo "Se han introducido $((${#palabras[@]})) palabras."
echo "Palabras ordenadas alfabéticamente:"
for palabra in $(echo "${palabras[@]}" | tr ' ' '\n' | sort); do
  echo "$palabra"
done
