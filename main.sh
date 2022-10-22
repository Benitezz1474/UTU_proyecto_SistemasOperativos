#!/bin/bash

while [ "$op" != 0 ]

do
echo -e "\e[0;36m Ingrese algo"

echo " 1) Registrar Usuario"
echo " 2) Acceder (login)"
echo " 3) Opcion no disponible"
echo -e "\e[0;31m 0) Salir\e[0m"

echo ""

read -p "ingrese una opcion " op

case $op in

1) ./RegistrarUser.sh ;;

2) ./Login.sh;;

0) echo -e "\e[1;33m Saliendo \e[0m";;

*) echo " Ingrese una opcion valida por favor " ;;

esac
done






