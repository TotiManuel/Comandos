echo "Redes en eth0"

# escaneo la red eth0 del local net, envio errores al dev/null, filtro por la columna 1 y despues que me muestre solo los que tienen 1
sudo arp-scan -I eth0 --localnet 2>/dev/null | awk '{print $1}' | grep '1'

echo "Redes en wlan0"

sudo arp-scan -I wlan0 --localnet 2>/dev/null | awk '{print $1}' | grep '1'

echo "informacion de las ip"

sudo arp-scan -I eth0 --localnet
sudo arp-scan -I wlan0 --localnet


#sudo netdiscover
