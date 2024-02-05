#02/02/2024
#Jose Antonio Moreno
#Entregable 4

if [ $# -gt 1 ]; then
	echo "Número incorrecto"
	exit
fi

if [ $# == 1 ]; then
	variable=$1
fi

if [ $# == 0 ]; then
	variable=1000
fi
fecha=$(date +"%d-%m-%y")
tiempo=$(date +"%H:%M")


p1=$(cut -f 2 -d ":" /etc/passwd)
usuariosContados=0
for i in $p1; do
	if [ $i -ge $variable ]; then
		usuario=$(cut -f 1,2,3,4 -d ":" /etc/passwd | grep ":$i:" | cut -f 1 -d ":")
		echo $usuario - $i
		echo
		usuariosContados=$(($usuarios))
	fi
done


echo "El total de usuarios es $usuarios"

echo "El usuario $USER quiere un informe de usuarios" >> /tmp/logeventos
