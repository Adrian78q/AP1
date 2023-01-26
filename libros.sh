#!/bin/bash
while true; do
    echo " "
    echo "-------------------------"
    echo "Menu:"
    echo "1) Buscar por título"
    echo "2) Buscar por año"
    echo "3) Buscar por editorial"
    echo "4) Buscar por género"
    echo "5) Insertar libro"
    echo "6) Salir"
    echo "-------------------------"
    read -p "Seleccione una opción: " opcion
    echo " "
    case $opcion in
        1) read -p "Ingrese el título a buscar: " titulo
           grep -i $titulo bdlibros.txt
           ;;
        2) read -p "Ingrese el año a buscar: " anyo
           grep -i $anyo bdlibros.txt
           ;;
        3) read -p "Ingrese la editorial a buscar: " editorial
           grep -i $editorial bdlibros.txt
           ;;
        4) read -p "Ingrese el género a buscar: " genero
           grep -i $genero bdlibros.txt
           ;;
        5) read -p "Ingrese el título del libro: " titulo
           read -p "Ingrese el año de publicación: " anyo
           read -p "Ingrese la editorial: " editorial
           read -p "Ingrese el género: " genero
           echo "$titulo - $anyo - $editorial - $genero" >> bdlibros.txt
           echo "Libro insertado exitosamente"
           ;;
        6) exit
           ;;
        *) echo "Opción inválida"
           ;;
    esac
done
