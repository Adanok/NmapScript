#!/bin/bash
read -p "Escriba la dirección IP: " direccion

echo "1- Escaneo rápido"
echo "2- Escaneo detallado"
echo "3- Escaneo de puertos"
echo "4- Escaneo de servicios"
echo "5- Escaneo de sistema operativo"
echo "6- Salir"

read -p "Seleccione una opción (1-6): " opcion

case $opcion in
    1)
        echo "Haciendo escaneo rápido"
        nmap -sP $direccion
        ;;
    2)
        echo "Haciendo escaneo detallado"
        nmap -sV -A $direccion
        ;;
    3)
        read -p "Escriba los puertos que quiere escanear" puertos
        echo "Haciendo escaneo de puertos"
        nmap -p $puertos $direccion
        ;;
    4)
        echo "Haciendo escaneo de servicios"
        nmap -sV $direccion
        ;;
    5)
        echo "Haciendo escaneo de sistema operativo"
        nmap -O $direccion
        ;;
    6)
        echo "Saliendo..."
        exit 0
        ;;
    *)
        echo "Elige del 1 al 5"
        ;;
esac