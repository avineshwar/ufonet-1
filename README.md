# **<center>Ufonet</center>**


**INTRODUCTION**

*Ufonet https://ufonet.03c8.net/ via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

copier/coller dans un terminal :

    docker run -d --name ufonet -p 9999:9999 -e DISPLAY alexandreoda/ufonet

<br/>*lien vers Ufonet http://0.0.0.0:9999*


**CONFIGURATION**

copier/coller dans un terminal :

    docker exec -ti ufonet /bin/bash

    ./ufonet --check-tor --proxy="http://127.0.0.1:8118"

<br/>**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/ufonet/blob/master/LICENSE)
