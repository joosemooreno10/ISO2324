#Autor:Jose Antonio Moreno
#Fecha:27/02

import os
import cpuinfo as c
uid=os.getuid()
if uid != 0:
    exit()
opcion=0
while True:
    print("Opcion 1: SSO y CPU")
    print("Opcion 2: Usuario")
    print("Opcion 3: Directorio")
    print("Opcion 4: Salir")
    opcion=int(input("Introduce opcion del menu: "))

    match opcion:
        case 1:
            print("Información de SSOO: ",os.uname())
            print("Información del procesador: ",c.get_cpu_info()["brand_raw"])

        case 2:
            us=input("Introduce usuario: ")
            enc=False
            f=open("/etc/passwd","r")
            l=f.readlines()
            for i in l:
                if us in i:
                    enc=True
            if enc==True:
                print("El usuario "+us+" ya existe")
            else:
                os.system("useradd -m "+us)
            f.close()

        case 3:
            direc=input("Introduce directorio: ")
            os.path.isdir(direc)
            if os.path.isdir(direc):
                print("El directorio ya ")
            else:
                print("El directorio no se ha encontrado")
                os.mkdir(direc)

        case 4:
            exit()
