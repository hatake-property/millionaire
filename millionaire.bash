#!/bin/bash

train_pos_x=0
train_pos_y=0

col=$(tput cols)
row=$(tput lines)

while [ $col -lt 300 ] || [ $row -lt 100 ]; do
	col=$(tput cols)
	row=$(tput lines)
done

while true; do
	for (( i=0; i<row; i++ )); do
		echo -e -n "\033[0;30;42m\033[$i;0H"
		for (( j=0; j<col; j++ )); do
			echo -e -n " "
		done
		echo -e "\033[0m"
	done

	echo -e -n "\033[0;41m\033[${(($row / 2 - 2))};${(($col / 2 - 13))}H  []      _______________\033[0m"
	echo -e -n "\033[0;41m\033[${(($row / 2 - 2))};${(($col / 2 - 13))}H _||_--_ |               |\033[0m"
	echo -e -n "\033[0;41m\033[${(($row / 2 - 2))};${(($col / 2 - 13))}H/       ||               |\033[0m"
	echo -e -n "\033[0;41m\033[${(($row / 2 - 2))};${(($col / 2 - 13))}H\_______||_______________|\033[0m"
	echo -e -n "\033[0;41m\033[${(($row / 2 - 2))};${(($col / 2 - 13))}H (_) (_)   (_)  (_)  (_)\033[0m"
done
