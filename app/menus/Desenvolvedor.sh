#!/bin/bash

senha=$(cat /\tmp/\authentication/\.senha)
usuario=$(cat /\tmp/\authentication/\.usuario)

Concluido() {
	./app/menus/complementares/Concluido.sh
}

AdminMongo() {
	#chamar node
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/admin-mongo.sh
}

AndrodStudio() {
	#verifica se java ta instalado e chamar java
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/android-studio.sh
}

Curl() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/curl.sh
}

Docker() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/docker-ce.sh
}

Eclipse() {
	#verifica se java ta instalado e chamar java
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/eclipse.sh
}

GitKraken() {
	#Chamar git
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/git-kraken.sh
}

Git() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/git.sh
}

JavaJdk() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/java-jdk.sh
}

Meld() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/meld.sh
}

MongoDb() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/mongodb.sh
}

Netbeans() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/netbeans.sh
}

NodeJs() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/node-js.sh
}

Nodemon() {
	#verificar se node ta instalado e chamar node
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/nodemon.sh
}

Php70() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/php70.sh
}

Php71() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/php71.sh
}

PhpStorm() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/php-storm.sh
}

PgActivity() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/pg-activity.sh
}

PgAdmin() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/pgadmin.sh
}

Postgresql() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/postgresql.sh
}

Portainer() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/portainer.sh
}

Postman() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/postman.sh
}

Pycharm() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/pycharm.sh
}

SceneBuilder() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/scenebuilder.sh
}

SublimeText() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/sublime-text.sh
}

Vagrant() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/vagrant.sh
}

WebStorm() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/web-storm.sh
}

Xampp() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/xampp.sh
}

#fazer teste com docker
VerificaJavaInstalado() {
	javas=$(javac -version)

	echo $javas
}

Desenvolvedor() {
	escolha=$(whiptail --title "Menu Básico" --menu "Pacote Básico" 20 78 7 \
	escolha=$(whiptail --title "Menu Desenvolvedor" --menu "Pacote Desenvolvedor" 20 78 7 \
	"1" "Instalar todos os programas" \
	"2" "Escolher o que instalar" \
	"3" "O que contém no pacote" \
	"<-" "Voltar para a tela inicial" 3>&1 1>&2 2>&3)
		
	case $escolha in
		1) InstalaTudo ;;
		2) EscolherProgramas ;;
		3) Detalhes ;;
		"<-") Voltar ;;
	esac
}

EmBranco() {
	./app/menus/complementares/EmBranco.sh
}

InstalaTudo() {
	AdminMongo
	AndrodStudio
	Curl
	Docker
	Eclipse
	GitKraken
	Git
	JavaJdk
	MongoDb
	Meld
	Netbeans
	NodeJs
	Nodemon
	Php70
	Php71
	PhpStorm
	PgActivity
	PgAdmin
	Portainer
	Postgresql
	Postman
	Pycharm
	SceneBuilder
	SublimeText
	Vagrant
	WebStorm
	Xampp
}

EscolherProgramas() {
	checkBox=$(whiptail --title "Backpack" --separate-output --checklist \
	"Escolha os programas para instalar" 20 78 8 \
	"AdminMongo" "" OFF \
	"Android Studio" "" OFF \
	"Curl" "" OFF \
	"Docker" "" OFF \
	"Eclipse" "" OFF \
	"GitKraken" "" OFF \
	"Git" "" OFF \
	"Java JDK" "" OFF \
	"Meld" "" OFF \
	"MongoDB" "" OFF \
	"NetBeans" "" OFF \
	"NodeJS" "" OFF \
	"Nodemon" "" OFF \
	"Php7.0" "" OFF \
	"Php7.1" "" OFF \
	"PHP Storm" "IDE para PHP" OFF \
	"PgActivity" "" OFF \
	"PgAdmin" "" OFF \
	"Portainer" "" OFF \
	"Postgresql" "" OFF \
	"Postman" "" OFF \
	"PyCharm" "" OFF \
	"SceneBuilder" "" OFF \
	"Sublime Text" "" OFF \
	"Vagrant" "" OFF \
	"WebStorm" "" OFF \
	"Xampp" "Ambiente de desenvolvimento PHP" OFF 3>&1 1>&2 2>&3)

	echo "$checkBox" | while read item
	do
		case $item in
			"AdminMongo") AdminMongo ;;
			"Android Studio") AndrodStudio ;;
			"Curl") Curl ;;
			"Docker") Docker ;;
			"Eclipse") Eclipse ;;
			"GitKraken") GitKraken ;;
			"Git") Git ;;
			"Java JDK") JavaJdk ;;
			"Meld") Meld ;;
			"MongoDB") MongoDb ;;
			"NetBeans") Netbeans ;;
			"NodeJS") NodeJs ;;
			"Nodemon") Nodemon ;;
			"Php7.0") Php70 ;;
			"Php7.1") Php71 ;;
			"PHP Storm") PhpStorm ;;
			"PgActivity") PgActivity ;;
			"PgAdmin") PgAdmin ;;
			"Portainer") Portainer ;;
			"Postgresql") Postgresql ;;
			"Postman") Postman ;;
			"PyCharm") Pycharm ;;
			"SceneBuilder") SceneBuilder ;;
			"Sublime Text") SublimeText ;;
			"Vagrant") Vagrant ;;
			"WebStorm") WebStorm ;;
			"Xampp") Xampp ;;
			*) EmBranco ;;
		esac
	done

	if [[ "$checkBox" != "" ]]; then
		Concluido
	fi
	Desenvolvedor
}

Detalhes() {
	./app/menus/detalhes/Basico.sh
	Desenvolvedor
}

Voltar() {
	#./app/menus/Principal.sh
	VerificaJavaInstalado
	#ver o que acontece quando não tem o jjj instalado
	
}

Desenvolvedor