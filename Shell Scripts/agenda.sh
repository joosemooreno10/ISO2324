#! /bin/bash
#Entregable 1:Agenda 
#Autor:Jose Antonio Moreno
#Fecha:17/01/2024

while true; do
    echo "------------Menú de Agenda-----------------"
    echo "a Añadir una entrada"
    echo "b Buscar por dni"
    echo "c Ver la agenda completa"
    echo "d Elimina todas las entradas de la agenda"
    echo "e Finalizar"
 
    read -p "Elige la operacion que deseas hacer: " opcion

    case $opcion in 
	a)
		echo "Has elegido añadir una entrada"
		read -p "Introduce DNI: " dni
		if grep "^$dni:" agenda.txt 2>/dev/null; then
			echo "El usuario existe"
		else
			read -p "Introduce nombre: " nombre
			read -p "Introduce apellidos: " apellidos
			read -p "Introduce localidad: " localidad
			echo $dni $nombre $apellidos $localidad >> agenda.txt
		fi

		;;

	b)
 		echo "Has elegido Buscar por dni"
                read -p "Introduce tu DNI: " dni
		if grep "^$dni:" agenda.txt 2>/dev/null; then
			nombre=$(grep "^$dni" agenda.txt | cut -d ":" -f 2)
			apellidos=$(grep "^$dni" agenda.txt | cut -d ":" -f 3)
			localidad=$(grep "^$dni" agenda.txt | cut -d ":" -f 4)
			echo "La persona con DNI numero $dni es: $nombre $apellidos, y vive en $localidad."
		else 
			echo "El dni no existe"
		fi

		;;

	c)
		echo "Has elegido ver la agenda completa"
		if
		if [ $(wc -c < agenda.txt) -eq 0 ]; then
		    echo "La agenda está vacia"
		else
    		    cat agenda.txt
		fi

		;;

	d)
		echo "Has elegido eliminar todas las entradas de la agenda"
		echo > agenda.txt
		;;

	e)
		echo "Has elegido la opcion Finalizar"
		exit
		;;

  	*)
		echo "Opción no válida. Por favor, ingrese una opcion válida."
            	;;
   esac
done
