#!/bin/bash
#echo "Introduce el primer número:"
#read num1
#echo "Introduce el segundo número:"
#read num2
read -p "Introduce el primer número:" num1
read -p "Introduce el segundo número:" num2

if [ $num1 -gt $num2 ]; then
  echo "El número $num1 es mayor que el $num2."
elif [ $num1 -lt $num2 ]; then
  echo "El número $num2 es mayor que el $num1."
else
  echo "$num1 y $num2 son iguales."
fi
