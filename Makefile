up:
	docker-compose up -d

build:
	docker-compose build

down:
	docker-compose down


server-build:
	docker-compose build pd_server

server-up:
	docker-compose up -d pd_server

server-down:
	docker-compose stop pd_server

update-server: server-down server-build server-up

connect-db:
	PGPASSWORD=pusoydos psql -U pd -h localhost -d pusoydos
