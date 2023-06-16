
# Inception

This project aims to broaden your knowledge of system administration by using Docker.
You will virtualize several Docker images, creating them in your new personal virtual
machine.


## Tech used in the project

![Rancher](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
![Rancher](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)
![Rancher](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Rancher](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white)
![Rancher](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Rancher](https://img.shields.io/badge/Wordpress-21759B?style=for-the-badge&logo=wordpress&logoColor=white)
![Rancher](https://img.shields.io/badge/redis-CC0000.svg?&style=for-the-badge&logo=redis&logoColor=white)


## Deployment



## About the project

This project consists in having you set up a small infrastructure composed of different
services under specific rules with docker compose.

The Docker images of the project are built with Dockerfile.

- A Docker container that contains NGINX with TLSv1.3.
- A Docker container that contains WordPress + php-fpm.
- A Docker container that contains MariaDB.
- A volume that contains the WordPress database.
- A second volume that contains the WordPress website files.
- A docker-network that establishes the connection between the containers.

## Bonus part
- Redis cache for the WordPress website in order to properly manage the cache.
- FTP server container pointing to the volume of the WordPress website.
- A simple static website.
- Adminer.
- Cadvisor
    


    



