#! /bin/bash

adduser schahid --disabled-login --gecos ""
echo ${FTP_USER}:${FTP_PASSWORD} | chpasswd
mkdir -p /home/${FTP_USER}/ftp/
chown -R ${FTP_USER}:${FTP_USER} /home/${FTP_USER}/
echo ${FTP_USER} >> /etc/vsftpd.userlist
BWhite='\033[1;37m'
echo -e "${BWhite}FTP installed successfully ✅"
vsftpd