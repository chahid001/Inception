all: mkdr up

mkdr:
	sudo mkdir -p /home/$USER/data/wp
	sudo mkdir -p /home/$USER/data/db

rm:
	sudo rm -rf /home/$USER/data

up:
	sudo docker compose -f srcs/docker-compose.yaml build
	sudo docker compose -f srcs/docker-compose.yaml up

down:
	sudo docker compose -f srcs/docker-compose.yaml down

prune:
	sudo docker system prune -af

clean: down prune

fclean: clean rm

re: fclean all
