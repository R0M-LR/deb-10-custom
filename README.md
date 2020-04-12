# Debian 10
Custom, repos and others things for Debian 10

## List of repos
Sury (recent php version)
```bash
#!/bin/bash
apt-get update && apt install gnupg2 -yy
wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php7.x.list
apt update && apt upgrade -yy
``` 

## Figlet
```bash
apt update && apt install figlet -yy
```
Launch at each authentication 
```bash
export HOSTNAME='MyVPS'
echo 'figlet -f slant "'$HOSTNAME'"' > /etc/profile.d/Z1-figlet.sh
echo $HOSTNAME > /etc/hostname
echo '' > /etc/motd
```

## My neofetch config
Neofetch install
```bash
apt update && apt install neofetch git -yy
```
Get the config file
```bash
mkdir -p $HOME/.config/neofetch/
git clone https://github.com/r0m-dev/custom-debian10.git $HOME/.config/neofetch/
```
To test
```bash
neofetch
```
Launch at each authentication  
```bash
echo 'neofetch --off' > /etc/profile.d/Z2-neofetch.sh
```
