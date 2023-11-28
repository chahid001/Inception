
# Inception

The "Inception" project delves into system administration with Docker, focusing on setting up a comprehensive infrastructure within a virtual machine. It mandates the creation of distinct Docker containers running various services like NGINX, WordPress with php-fpm, and MariaDB, among others. Emphasizing best practices, it prohibits certain approaches, mandates use of environment variables, and enforces security measures like domain configuration and avoiding credential exposure. Additionally, it includes a bonus section allowing students to implement extra services like Redis cache, FTP server, or additional utilities for bonus credit, contingent upon successful completion of the mandatory tasks.


## Tech used in the project

![Rancher](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
![Rancher](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)
![Rancher](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Rancher](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white)
![Rancher](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Rancher](https://img.shields.io/badge/Wordpress-21759B?style=for-the-badge&logo=wordpress&logoColor=white)
![Rancher](https://img.shields.io/badge/redis-CC0000.svg?&style=for-the-badge&logo=redis&logoColor=white)



## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`URL`

`MYSQL_USER`
`MYSQL_PASSWORD`
`MYSQL_ROOT_PASSWORD`

`WORDPRESS_ROOT_LOGIN`
`WORDPRESS_ROOT_EMAIL`
`WORDPRESS_NAME`
`WORDPRESS_USER_EMAIL`

`FTP_USER`
`FTP_PASSWORD`


## Deployment

To deploy this project run

```bash
make
```

Also you need to modify your 'hosts' file, so you can use the domain name instead of the IP addr

```bash
sudo nano /etc/hosts
```

## About the project

This project consists in having you set up a small infrastructure composed of different
services under specific rules with docker compose.

The Docker images of the project are built with Dockerfile

- A Docker container that contains NGINX with TLSv1.3
- A Docker container that contains WordPress + php-fpm
- A Docker container that contains MariaDB
- A volume that contains the WordPress database
- A second volume that contains the WordPress website files
- A docker-network that establishes the connection between the containers

![](https://github.com/chahid001/Inception/blob/main/assets/inception.png)

## Bonus part
- Redis cache for the WordPress website in order to properly manage the cache
- FTP server container pointing to the volume of the WordPress website
- A simple static website.
- Adminer
- Cadvisor
