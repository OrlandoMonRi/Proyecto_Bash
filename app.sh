#! /bin/bash

case "$1" in
	a|-a)
		echo "Guía rápida de AGILE:"
		A=('SCRUM' 'X.P.' 'Kanban' 'Crystal')
		for i in $(seq 1 ${#A[@]}); do
			echo "$i. ${A[$i-1]}"
		done
		;;
	t|-t)
		echo "Guía rápida de metodologías TRADICIONALES:"
		T=('Cascada' 'Espiral' 'Movelo V')
		for i in $(seq 1 ${#T[@]}); do
			echo "$i. ${T[$i-1]}"
		done
		;;
	*)
		echo "INVALID"
		;;
esac
