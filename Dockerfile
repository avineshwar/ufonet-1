FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DES PREREQUIS
RUN apt-get update && \
apt-get install --no-install-recommends -y \
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
dnsutils

# AJOUT UTILISATEUR
RUN useradd -d /home/ufonet -m ufonet && \
passwd -d ufonet && \
adduser ufonet sudo

# SELECTION UTILISATEUR
USER ufonet

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/ufonet

# INSTALLATION DE L'APPLICATION
RUN git clone https://github.com/epsylon/ufonet.git

# CONFIGURATION TOR & PRIVOXY
RUN sudo rm -f /etc/privoxy/config && \
sudo rm -f /etc/tor/torcc && \
echo "listen-address localhost:8118" | sudo tee -a /etc/privoxy/config && \
echo "forward-socks5 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4a / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "SOCKSPort localhost:9050" | sudo tee -a /etc/tor/torcc

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y \
wget \
git && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/ufonet/ufonet/

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD sudo service tor start && sudo service privoxy start && ./ufonet --gui
