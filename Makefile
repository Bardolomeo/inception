

container?=wordpress
volume?=wordpress
image?=wordpress


fupd:
	cd srcs ; sudo docker compose up --build -d ; cd ..

fup:
	cd srcs ; sudo docker compose up --build ; cd ..

fre:	fdown fup

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
