#!/bin/bash

val='^[0-9]+$'

while [ -z $cons ]
do

while :
do

echo  -e "\e[1;36m Ingrese CI:\e[0m "
read ci

if [[ $ci =~ $val ]];then

break

else

echo -e "\e[0;31m Ingrese una CI VALIDA\e[0m"

fi

done


consulta="SELECT * FROM usuarios WHERE ci = '$ci' "
cons=$(mysql -u fbenitez -p52705175 fbenitez -h 192.168.2.52 -e "$consulta")

echo "$cons";

done

