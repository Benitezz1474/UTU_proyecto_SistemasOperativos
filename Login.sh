#!/bin/bash

echo "Bienvenido al sistema de login" 

val='^[0-9]+$'
while :
do
 
read -p "Ingrese su CI: " ci

if [[ $ci =~ $val ]];then

break

else 

echo "CI incorrecto, ingrese una CI valida"

fi
done  

 read -p "Ingrese su clave: " pass

#consulta a la bd, en mi PC da error:

consulta="SELECT tipo_user FROM usuarios WHERE ci='$ci' AND pass='$pass'";

cons=$(mysql -u fbenitez -p52705175 fbenitez -h 192.168.2.52 -e "$consulta");

echo "$cons" >> users.txt

result=$(tail -1 users.txt)

case $result in 

"director")./Director.sh;;

"coordinador") ./Cordinador.sh;;

"adscripto") ./Adscripto.sh;;

"admin") ./Admin.sh;;

*) ./main.sh;;

esac
