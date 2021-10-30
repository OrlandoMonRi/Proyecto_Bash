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
			touch ${A[opc-1]}.inf
			clear
			echo ${A[opc-1]}
			echo "
			1. Agregar información
			2. Buscar
			3. Eliminar información
			4. Leer base de información.
			"
			read -p "> " subopc
			case $subopc in
				1)
					echo "[concepto] .- definición."
					read -p "> " line
					echo $line >> ${A[opc-1]}.inf
					;;
				2)
					read -p "(buscar) > " concepto
					grep -i $concepto ${A[opc-1]}.inf
					;;
				3)
					read -p "(eliminar) > " concepto
					sed -i "/$concepto/d" ${A[opc-1]}.inf
					;;
				4)
					cat $concepto ${A[opc-1]}.inf
					;;
				*)
					echo "Opcion no valida"
			esac
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
			T=('Cascada' 'Espiral' 'ModeloV')
			for i in $(seq 1 ${#T[@]}); do
				echo "$i. ${T[$i-1]}"
			done
			read -p "> " opc
			touch ${T[opc-1]}.inf
			clear
			echo ${T[opc-1]}
			echo "
			1. Agregar información
			2. Buscar
			3. Eliminar información
			4. Leer base de información.
			"
			read -p "> " subopc
			case $subopc in
				1)
					echo "[concepto] .- definición."
					read -p "> " line
					echo $line >> ${T[opc-1]}.inf
					;;
				2)
					read -p "(buscar) > " concepto
					grep -i $concepto ${T[opc-1]}.inf
					;;
				3)
					read -p "(eliminar) > " concepto
					sed -i "/$concepto/d" ${T[opc-1]}.inf
					;;
				4)
					cat $concepto ${T[opc-1]}.inf
					;;
				*)
					echo "Opcion no valida"
			esac
			echo -n "Continue? [y/N]: "
			read ans
			if [[ "$ans" != "y" ]]; then
				exit 1
			fi
		done
		;;
esac
