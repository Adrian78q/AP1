#!/bin/bash
echo "Introduce el título del libro:"
read titulo
echo "Introduce el año del libro:"
read anyo
echo "Introduce la editorial del libro:"
read editorial
echo "Introduce el género del libro (opciones: ficcion, no_ficcion, poesia, comic):"
read genero
echo "$titulo - $anyo - $editorial - $genero" >> bdlibros.txt
