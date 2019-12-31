#!/bin/bash
apt-get update && apt install gnupg2 -yy
wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php7.x.list
apt update
apt upgrade
