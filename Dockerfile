FROM debian:stretch-slim

MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER ufonet
ENV APP https://github.com/epsylon/ufonet.git
ENV DEBIAN_FRONTEND noninteractive

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
tor \
privoxy \
git \
python \
ca-certificates \
python-pycurl \
python-geoip \
python-whois \
python-crypto \
python-requests \
python-scapy \
dnsutils && \

# AJOUT UTILISATEUR
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}

# INSTALLATION DE L'APPLICATION
RUN git clone ${APP} && \

# CONFIGURATION TOR & PRIVOXY
sudo rm -f /etc/privoxy/config && \
sudo rm -f /etc/tor/torcc && \
echo "listen-address localhost:8118" | sudo tee -a /etc/privoxy/config && \
echo "forward-socks5 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4a / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "SOCKSPort localhost:9050" | sudo tee -a /etc/tor/torcc && \

# NETTOYAGE
sudo apt-get --purge autoremove -y \
git && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}/ufonet/

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD sudo service tor start && sudo service privoxy start && ./ufonet --check-tor --proxy="http://127.0.0.1:8118" && ./ufonet --download-zombies --force-yes && ./ufonet --gui
