FROM debian:latest

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update

RUN apt-get install --no-install-recommends -y sudo tor privoxy git python ca-certificates python-pycurl python-geoip python-whois python-crypto python-requests python-scapy dnsutils

RUN useradd -d /home/ufonet -m ufonet
RUN passwd -d ufonet
RUN adduser ufonet sudo

USER ufonet

RUN git clone https://github.com/epsylon/ufonet.git /home/ufonet/ufonet/

WORKDIR /home/ufonet/ufonet/

RUN sudo rm -f /etc/privoxy/config
RUN sudo rm -f /etc/tor/torcc
RUN echo "listen-address localhost:8118" | sudo tee -a /etc/privoxy/config
RUN echo "forward-socks5 / localhost:9050 ." | sudo tee -a /etc/privoxy/config
RUN echo "forward-socks4 / localhost:9050 ." | sudo tee -a /etc/privoxy/config
RUN echo "forward-socks4a / localhost:9050 ." | sudo tee -a /etc/privoxy/config
RUN echo "SOCKSPort localhost:9050" | sudo tee -a /etc/tor/torcc

RUN sudo apt-get --purge autoremove -y git

CMD sudo service tor start && sudo service privoxy start && ./ufonet --gui
