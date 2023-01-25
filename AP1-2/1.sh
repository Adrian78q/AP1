#!/bin/bash
echo "Ingresa una cadena de caracteres:"
read cadena1
echo "Ingresa otra cadena de caracteres:"
read cadena2
if [ "$cadena1" == "$cadena2" ]; then
    echo "Las cadenas son iguales."
else
    echo "Las cadenas son diferentes."
fi
