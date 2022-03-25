#!/bin/bash


#	
#	script bash para Ubuntu y derivados, para elegir mirror automaticos
#	mas rapidos y cercanos.
#	
#	agrega mirror://mirrors.ubuntu.com/mirrors.txt  , conviniendo con los demas repos
#	

#	
#	Creador: Huezo
#	https://huezohuezo1990.wordpress.com/
#	Licencia: GPLv3+





ubuntu=$(lsb_release -cs)



echo "script bash para elegir mirror automaticos mas rapidos y cercanos."
echo "usa el numero de la version de Ubuntu que usas"
echo "0. Ubuntu x LTS - Automaticamente detecta la version"
echo "1. Ubuntu 14.04 LTS"
echo "2. Ubuntu 16.04 LTS"
echo "3. Ubuntu 18.04 LTS"
echo "4. Ubuntu 20.04 LTS"
echo "5. Ubuntu 22.04 LTS"

echo ""



 read x


  case $x in
  

     0)


# Ubuntu x LTS

sudo bash -c "cat >>/etc/apt/sources.list << EOL
  
deb mirror://mirrors.ubuntu.com/mirrors.txt $ubuntu main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt $ubuntu-updates main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt $ubuntu-backports main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt $ubuntu-security main restricted universe multiverse
   
EOL"


echo "Terminado..."
echo $ubuntu

     ;;  
  
  
  
     1)
# Ubuntu 14.04 LTS

sudo bash -c "cat >>/etc/apt/sources.list << EOL

deb mirror://mirrors.ubuntu.com/mirrors.txt trusty main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-updates main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-backports main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-security main restricted universe multiverse
   
EOL"

echo "Terminado..."

     ;;
     2)

# Ubuntu 16.04 LTS

sudo bash -c "cat >>/etc/apt/sources.list << EOL

deb mirror://mirrors.ubuntu.com/mirrors.txt xenial main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-updates main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-backports main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-security main restricted universe multiverse
   
EOL"

echo "Terminado..."

     ;;

     3)

# Ubuntu 18.04 LTS

sudo bash -c "cat >>/etc/apt/sources.list << EOL
  
deb mirror://mirrors.ubuntu.com/mirrors.txt bionic main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt bionic-updates main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt bionic-backports main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt bionic-security main restricted universe multiverse
   
EOL"

echo "Terminado..."

     ;;





    4)

# Ubuntu 20.04  LTS

sudo bash -c "cat >>/etc/apt/sources.list << EOL
  
deb mirror://mirrors.ubuntu.com/mirrors.txt focal main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt focal-updates main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt focal-backports main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt focal-security main restricted universe multiverse
   
EOL"

echo "Terminado..."

     ;;
     


    5)

# Ubuntu 22.04  LTS

sudo bash -c "cat >>/etc/apt/sources.list << EOL
  
deb mirror://mirrors.ubuntu.com/mirrors.txt jammy main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt jammy-updates main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt jammy-backports main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt jammy-security main restricted universe multiverse
   
EOL"

echo "Terminado..."

     ;;







     *)
        echo "Error numero, no corresponde a la Lista"
     ;;



  esac


#	
#	Creador: Huezo
#	https://huezohuezo1990.wordpress.com/
#	Licencia: GPLv3+












