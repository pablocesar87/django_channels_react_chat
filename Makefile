COMPOSE_FILE?=chat_rest_api/docker-compose.yml
COMPOSE_CMD=docker-compose -f $(COMPOSE_FILE)
RUN_DJANGO = $(COMPOSE_CMD) run --rm django
RUN_DJANGO_NO_DEPS = $(COMPOSE_CMD) run --rm --no-deps django
RUN_MANAGE = $(RUN_DJANGO) python manage.py

default:
	make build

build:
	$(COMPOSE_CMD) build

runserver:
	$(COMPOSE_CMD) run --service-ports --rm django

migrate:
	$(RUN_MANAGE) migrate

create_admin:
	$(RUN_MANAGE) createsuperuser --username admin

backend:
	$(COMPOSE_CMD) run -d -p 8000:8000 --rm django

client:
	make backend
	make frontend
	make start

frontend:
	docker build -t react_chat ./react_chat

start:
	docker run -p 3000:3000 react_chat

up:
	make backend
	make start
