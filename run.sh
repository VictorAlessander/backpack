#!/bin/bash

senha=0
usuario=0

chmod +x ./ -R

usuario=$(whiptail --title "Backpack" --inputbox "Por favor digite seu usuário" 8 78 3>&1 1>&2 2>&3)

senha=$(whiptail --title "Backpack" --passwordbox "Por favor digite sua senha" 8 78 3>&1 1>&2 2>&3)

MenuPrincipal() {
	./app/menus/Principal.sh
}

if [[ ! -d "/tmp/authentication" ]]; then
	mkdir /tmp/authentication

	touch /tmp/authentication/.senha
	touch /tmp/authentication/.usuario
fi

echo $senha > /tmp/authentication/.senha
echo $usuario > /tmp/authentication/.usuario

MenuPrincipal
