#! /bin/bash 
#Autor:Jose Antonio Moreno
#Fecha:22/01/2024

clear

echo "Jose Antonio Moreno Rodriguez"


if [ "$#" -ne 2 ]; then
	echo "Número de parametros incorrectos"
	exit
fi

if [ -f $1 ]: then
	echo "Fichero existente"
	exit
fi

i=1

while [ $1 -le $2 ]; do

read -p "Operacion: Op1 Op2 " op op1 op2

case $op in

	S)
		echo "Suma"
		let a=$(( $op1 + $op2))
		echo "La suma es $a"
		echo $op $op1 $op2 >> $1
	;;

        R)
		echo "Resta"
                let a=$(( $op1 - $op2))
                echo "La resta es $a"
                echo $op $op1 $op2 >> $1


	;;

	M)
		echo "Multiplicación"
                let a=$(( $op1 * $op2))
                echo "La multiplicación es $a"
                echo $op $op1 $op2 >> $1
	;;

	D)
		echo "Division"
                let a=$(( $op1 / $op2))
                echo "La division es $a"
                echo $op $op1 $op2 >> $1


	;;

	X)
		echo "Salimos del script"
		exit
	;;

	*)
		echo "Opcion invalida"
esac

i=$(($i+1))
done
echo $p/$1
