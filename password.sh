#!/bin/bash

car_spe="a07bcdefgh@i1jk2lmnop6%qrst?u34v!wxyzAB5CDEFG8HIJKL#MNOPQR&ST*UVWXYZ9"
car="a07bcdefghi1jk2lmnop6qrstu34vwxyzAB5CDEFG8HIJKLMNOPQRSTUVWXYZ9"
car_snum="abcdefghijklmnopqrstuvwxyzAB5CDEFG8HIJKLMNOPQRSTUVWXYZ"

echo "Choissisez votre type de mot de passe :" 
echo "1 : Avec majuscules, miniscules, numéro et caractères spéciaux"
echo "2 : Avec majuscules, miniscules, sans numéro et sans caractères spéciaux"
echo "3 : Avec majuscules, miniscules,  numéro mais  sans caractères spéciaux"
read -p "Choix :" choix

case $choix in
	1)
	len_spe=${#car_spe}
	mdp=""

	for i in $(seq 1 $1); do
       		 n=$((RANDOM % $len_spe))
        	mdp+=${car_spe:n:1}
	done
	echo $mdp
	;;

	2)
	len_snum=${#car_snum}
	mdp=""

	for i in $(seq 1 $1); do
        	n=$((RANDOM % $len_snum))
        	mdp+=${car_snum:n:1}
	done
	echo $mdp
	;;

	3)
	len_car=${#car}
	mdp=""

	for i in $(seq 1 $1); do
        	n=$((RANDOM % $len_car))
        	mdp+=${car:n:1}
	done
	echo $mdp

	;;

	*)
	echo "Inconnu"
	;;
esac
