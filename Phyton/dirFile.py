# Entregable 2 python
# Roberto Negrete García
# 04/03/24
import os
import shutil

files = []
direct = []

fichero = open("rutas.txt", "r")
lineas = fichero.readlines()
for i in lineas:
    ruta = i.strip()
    if os.path.isfile(ruta):
        files.append(ruta)

    elif os.path.isdir(ruta):
        direct.append(ruta)


print("A Borrar fichero")
print("B Información directorio")
print("C Copiar fichero")
print("D Mostrar lista")
print("E Salir")


while True:
    opcion = input("Ingrese su opcion: ")

    if opcion == "A":
        fichero = input("Introduce el nombre de un fichero: ")
        os.system(f'rm {fichero}')
        files.remove(fichero)

    elif opcion == "B":
        dic = input("Introduce un directorio: ")
        info = os.system(f'ls {dic}')
        print(info)

    elif opcion == "C":
        nombre = input("Introduce el nombre de un fichero: ")
        destino = input("Ingrese el destino donde quieres copiar el fichero: ")

        shutil.copy(f"{nombre}", f"{destino}")

    elif opcion == "D":
        print("Ingrese '1' para mostrar lista ficheros")
        print("Ingrese '2' para mostrar lista directorios")
        opcion2 = input("Ingrese opción: ")

        if opcion2 == "1":
            print(files)

        elif opcion2 == "2":
            print(direct)

    elif opt == "E":
        print("Has elegido la opcion salir")
        exit()

fichero.close()