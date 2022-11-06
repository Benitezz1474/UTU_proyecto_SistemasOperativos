#!/bin/bash

echo -e "\e[0;37m Bienvenido Director\e"

while [ "op" != 0 ]
do

echo "1) Gestion de Usuarios"
echo "2) Gestion de Ausencias"
echo "3) Gestion de Docentes"
echo "0) Cerrar Sesion"

read -p "Ingrese una opcion" op

case $op in

1) ./Gestion_Usuarios.sh  ;;
2) ./Gestion_Ausencias;;
3) ./Gestion_Docentes ;;
0) ./main;;
*) echo -e "\e[0;31m Ingrese una opcion VALIDA  \e[0m"

done

