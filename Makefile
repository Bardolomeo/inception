

container?=wordpress
volume?=wordpress
image?=wordpress



NAME=inception	
var="$(head /etc/hosts -n 1) gsapio.42.it"


fupd:
	cd srcs ; sudo docker compose up --build -d ; cd ..

all: $(NAME)

$(NAME):
	cd srcs ; sudo docker compose up --build ; cd ..

fup: $(NAME)

re:	down fup

fre:	fdown rm-vol-all prune fup 

down:
	cd srcs ; sudo docker compose down ; cd ..

downi:
	cd srcs ; sudo docker compose down ; sudo docker rmi inception-$(image); cd ..


fdown:
	cd srcs ; sudo docker compose down -v --rmi all ; cd ..

rm-vol:
	sudo rm -rf /home/gsapio/data/$(volume)/*

rm-vol-all:
	sudo rm -rf /home/gsapio/data/*/*

conshell:
	sudo docker exec -ti $(container) bash 

prune:
	sudo docker system prune --volumes

host:
	sudo bash -c "echo 127.0.0.1 localhost gsapio.42.it >> /etc/hosts; exit"
