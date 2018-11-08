#!/bin/bash

echo -e "Bienvenido al programa de Reconocimiento Facial\n"
echo -e "Que accion desea Hacer?\n1-Iniciar programa de Reconocimiento"
echo -e "2-Agregar a una persona a la base de datos"

read Opcion

if [ "$Opcion" == "1" ]; then
	cd /home/pi/recoFacial
	python /home/pi/recoFacial/reconocimiento.py
else
		echo -e "Ingrese la contraseña\n\n"
		read contra
		if [ "$contra" == "itca123" ]; then
			echo -e "\n\nIngrese el nombre de la persona a agregar"
			read Nombre
			cd /home/pi/recoFacial
			python /home/pi/recoFacial/captura.py $Nombre
		fi

fi
