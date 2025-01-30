run:
	mv .htaccess.example .htaccess
	docker compose down --remove-orphans
	docker-compose up -d --build
	docker exec -ti wordpress '/prep.sh'

stop:
	docker-compose down --remove-orphans

remove:
	docker-compose down --remove-orphans
	rm -rf database/
	rm -rf site/*

ssh-sql:
	docker exec -ti db bash

ssh:
	docker exec -ti wordpress bash