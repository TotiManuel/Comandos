programa="1"
while test $programa != "x";
do
	clear #Borra la terminal
	echo Bienvenido, Que deseas hacer?
	echo [1] Conexiones Wifi
	echo [2] Datos de este equipo
	echo [3] Cambiar Configuracion del Teclado
	echo [4] Descargar Web 
	echo [5] Claves
	echo [6] 
	echo [7] 
	echo [x] Salir
	echo ----------------------------------------
	read programa
	if test $programa = 1; then 
		clear
		echo
		echo Estas conectado a la red - $(iwgetid -r);
		echo ------------------------------------------- 
		echo Wifi Disponibles
		echo $(sudo iw wlan0 scan | grep SSID)
		echo -------------------------------------------
		echo Dime el SSID del wifi
		read NombreWifi
		echo Dime la Clave del wifi
		read ClaveWifi
		echo $(nmcli dev wifi connect "$NombreWifi" password $ClaveWifi)
		echo -------------------------------------
		echo presione una tecla para continuar..
		read tecla
	elif test $programa = 2; then
		clear
		echo 
		echo $(ifconfig | grep inet)
		echo -------------------------------------
		echo presione una tecla para continuar...
		read tecla
	elif test $programa = 3; then
		clear
		echo 
		echo $(setxkbmap -layout es) El idioma fue cambiado con exito
		echo -------------------------------------
		echo presione una tecla para continuar
		read tecla
	elif test $programa = 4; then
		clear
		echo 
		echo Que web deseas descargar?
		read webdescarga
		echo $(wget $webdescarga)
		echo --------------------------------------
		echo presione una tecla para continuar
		read tecla
	elif test $programa = 5;then
		clear
		echo 
		echo Usuario Github: TotiManuel
		echo Clave Github: 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
		echo ------------------------------------------------------- 
		echo Configuracion de OpenAI - require API Key
		echo openai.api_key= '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'
		echo --------------------------------------
		echo
		echo pulse una tecla para continuar...
		read tecla
	else
		clear
		echo Hasta la Proxima
	fi
done
