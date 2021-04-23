# Instalación de Docker
sudo apt update
sudo apt-get --force-yes --yes install apt-transport-https ca-certificates curl gnupg2 software-properties-common

sudo apt-get --force-yes --yes install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

sudo apt-get --force-yes --yes update
sudo apt-get --force-yes --yes install docker-ce docker-ce-cli containerd.io docker-compose

# Instalar Pip3 para manegar paquetes Python

sudo apt-get -y install python3-pip

 pip3 install virtualenv
