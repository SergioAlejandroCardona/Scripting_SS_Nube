#!/bin/bash

trap ctrl_c INT

function ctrl_c(){
echo -e "\n\n[*] saliendo..\n"
exit 0
}
privada=$(ifconfig enp0s3 | grep -i mask | awk '{print $2 }')
#publica=$(curl https://ifconfig.me)
red="10.0.2"
echo "Mi direccion ip privada es $privada"
#echo "Mi direccion ip publica es $publica"

for i in $(seq 1 254); 
	do bash -c "ping -c 1 $red.$i" > /dev/null && echo "$red.$i esta activo"; 
done
