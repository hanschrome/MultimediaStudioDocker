info:
	cat Makefile
build:
	docker compose build base-md
	docker compose build
up: build
	docker compose up -d
down:
	docker compose down