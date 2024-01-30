#!/bin/bash
#Autor: Jose Antonio Moreno
#Fecha: 29/01/2024


clear
if [ "$#" -ne 2 ]; then
    echo "Error: Deben ser dos parámetros de entrada."
    exit 1
fi


fichero=$1

directorio=$2


if [ -e "$fichero" ]; then
	echo "El fichero ya existe"
	exit
fi

if [ ! -d "$directorio" ]; then
    echo "El directorio no existe."
    exit
fi

if [ -z "$(ls -A $directorio)" ]; then
    echo "El directorio está vacío."
    exit
fi

echo "Autor:Jose Antonio Moreno Rodriguez"

ficheros=$( ls $2/*.txt)
for i in $ficheros; do
	if [ -f $i ];then 
		lineas=$(cat $i  |wc -l)
		if [ $lineas -ge 5 ];then
		echo $i
		echo $i >> $1

		palabras=$(cat $i | wc -w)
		echo "El fichero tiene $palabras palabras" > $i.q
		cat $i > $i.q

		fi
	fi
done

numero =$(cat $1| wc -l)

echo $numero >> $1

