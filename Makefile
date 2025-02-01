include .env
export

run:
	sudo rm -rf database/
	docker compose down --remove-orphans
	docker-compose up -d --build
	docker exec -ti $${PROJECT_NAME}-wordpress '/prep.sh'

stop:
	docker-compose down --remove-orphans

remove:
	docker-compose down --remove-orphans
	rm -rf database/
	rm -rf site/*

ssh-sql:
	docker exec -ti $${PROJECT_NAME}-mysql bash

ssh:
	docker exec -ti $${PROJECT_NAME}-wordpress bash