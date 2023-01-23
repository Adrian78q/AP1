#!/bin/bash
function buscar_titulo {
  echo "Introduce el título a buscar:"
  read titulo_buscar
  resultados=$(grep "$titulo_buscar" bdlibros.txt)
  if [ -z "$resultados" ]; then
    echo "No se han encontrado resultados."
  else
    echo "Resultados:"
    echo "$resultados"
  fi
}

function buscar_anyo {
  echo "Introduce el año a buscar:"
  read anyo_buscar
  resultados=$(grep "$anyo_buscar" bdlibros.txt)
  if [ -z "$resultados" ]; then
    echo "No se han encontrado resultados."
  else
    echo "Resultados:"
    echo "$resultados"
  fi
}

function buscar_editorial {
  echo "Introduce la editorial a buscar:"
  read editorial_buscar
  resultados=$(grep "$editorial_buscar" bdlibros.txt)
  if [ -z "$resultados" ]; then
    echo "No se han encontrado resultados."
  else
    echo "Resultados:"
    echo "$resultados"
  fi
}

function buscar_genero {
  echo "Introduce el género a buscar (opciones: ficion, no_ficcion, poesia, comic):"
  read genero_buscar
  resultados=$(grep "$genero_buscar" bdlibros.txt)
  if [ -z "$resultados" ]; then
    echo "No se han encontrado resultados."
  else
    echo "Resultados:"
    echo "$resultados"
  fi
}

function insertar_libro {
  ./libros-anyadir.sh
}

while true; do
  echo "Menú:"
  echo "1) Buscar por título"
  echo "2) Buscar por año"
  echo "3) Buscar por editorial"
  echo "4) Buscar por género"
  echo "5) Insertar libro"
  echo "6) Salir"
  read opcion
    
done
