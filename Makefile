

cont?=mariadb

fup:
	cd srcs ; sudo docker compose up --build -d ; cd ..

fdown:
	cd srcs ; sudo docker compose down -v --rmi all ; cd ..

rm-vol-all:
	sudo rm /home/gsapio/data/*/*

conshell:
	sudo docker exec -ti $(cont) bash 

