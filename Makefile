all: mkdr up

mkdr:
	sudo mkdir -p /home/schahid/data/wp
	sudo mkdir -p /home/schahid/data/db

rm:
	sudo rm -rf /home/schahid/data

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
