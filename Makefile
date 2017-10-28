CURRENT_DIRECTORY := $(shell pwd)
help:
	@echo "Docker Compose Help for deploying Yaksh interface"
	@echo -e "-----------------------\n"
	@echo "Install Dependancies on base machine:"
	@echo "    make install-dep"
	@echo ""
	@echo "Build docker images:"
	@echo "    make build"
	@echo ""
	@echo "Really, really start over:"
	@echo "    make clean"
	@echo ""
	@echo "See contents of Makefile for more targets."

begin: migrate fixtures start

install-dep:
	@/bin/bash install-dep.sh

start:
	@docker-compose up -d

stop:
	@docker-compose stop

status:
	@docker-compose ps

restart: stop start

clean: stop
	@docker-compose rm --force
	@find . -name \*.pyc -delete

build:
	@docker-compose build 

migrate:
	@docker exec -it yaksh-django python manage.py makemigrations
	@docker exec -it yaksh-django python manage.py migrate

superuser:
	@docker exec -it yaksh-django python manage.py createsuperuser
	@docker exec -it yaksh-django python manage.py add_group

tail:
	@docker-compose logs -f

.PHONY: start stop status restart clean build migrate tail install-dep superuser
