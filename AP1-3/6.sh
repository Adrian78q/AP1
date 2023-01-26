#!/bin/bash
read -p "Introduce un numero: " n
a=0
b=1
echo "Los $n primeros elementos de la sucesión de Fibonacci son:"
echo $a
echo $b
for ((i=2; i<n; i++)); do
  c=$((a+b))
  echo $c
  a=$b
  b=$c
done
