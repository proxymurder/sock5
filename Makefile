NAME=sock5
IMAGE=proxymurder/${NAME}:latest

all:

image: 
	docker build -t ${IMAGE} ./

compose:
	docker compose up -d ${NAME}

sh:
	docker compose ${NAME} sh

rollback:
	docker compose down
