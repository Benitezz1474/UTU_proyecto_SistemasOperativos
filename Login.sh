#!/bin/bash



echo "Bienvenido al sistema de login"

read -p "Ingrese su CI: " ci
read -p "Ingrese su clave: " pass

#consulta a la bd, en mi PC da error:

consulta = "SELECT tipo_user FROM usuarios WHERE ci = 'ci' AND clave = 'pass'";

$cons = $(mysql -u root fbenitez -h localhost -e "$consulta");

echo "$cons"

#suponiendo que lo demas funcione; al devolver el tipo user, se ejecutará una accion,
#que dependerá de este (tipo_user)

#antes de entrar en el case, hay que cortar el comando para que funcione



