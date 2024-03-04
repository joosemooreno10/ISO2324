#Entregable 1
#Jose Antonio Moreno
#27/03/2024


import os
import cpuinfo as c
uid=os.getuid()
if uid != 0:
    print("No eres root")
    exit()
num=0
while True:
    print("Opcion 1: SSOO y CPU")
    print("Opcion 2: Usuario")
    print("Opcion 3: Directorio")
    print("Opcion 4: Salir")

    opcion=int(input("Introduce opcion del menu: "))

    match opcion:
        case 1:
            print("Información de SSOO: ",os.uname())
            print("Información del procesador: ",c.get_cpu_info()["brand_raw"])

        case 2:
            usuario=input("Introduce un usuario: ")
            enc=False
            f=open("/etc/passwd","r")
            l=f.readlines()
            for i in l:
                if usuario in i:
                    enc=True
            if enc==True:
                print("El usuario "+usuario+" ya existe")
            else:
                os.system("useradd -m "+usuario)
            f.close()

        case 3:
            direc=input("Introduce un directorio: ")
            os.path.isdir(direc)
            if os.path.isdir(direc):
                print("El directorio existe")
            else:
                print("El directorio no existe")
                os.mkdir(direc)

        case 4:
            exit()