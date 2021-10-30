#! /bin/bash

case "$1" in
	a|-a)
		while true; do
			clear
			echo "Guía rápida de AGILE:"
			A=('SCRUM' 'X.P.' 'Kanban' 'Crystal')
			for i in $(seq 1 ${#A[@]}); do
				echo "$i. ${A[$i-1]}"
			done
			read -p "> " opc
			clear
			echo ${A[opc-1]}
			echo "
			1. Agregar información
			2. Buscar
			3. Eliminar información
			4. Leer base de información.
			"
			echo -n "Continue? [y/N]: "
			read ans
			if [[ "$ans" != "y" ]]; then
				exit 1
			fi
		done
		;;
	t|-t)
		while true; do
			clear
			echo "Guía rápida de metodologías TRADICIONALES:"
			T=('Cascada' 'Espiral' 'Modelo V')
			for i in $(seq 1 ${#T[@]}); do
				echo "$i. ${T[$i-1]}"
			done
			read -p "> " opc
			clear
			echo ${T[opc-1]}
			echo "
			1. Agregar información
			2. Buscar
			3. Eliminar información
			4. Leer base de información.
			"
			echo -n "Continue? [y/N]: "
			read ans
			if [[ "$ans" != "y" ]]; then
				exit 1
			fi
		done
		;;
esac
