include .env
GID = $(shell id -g)
UID = $(shell id -u)

default: install prepare-env build-api build-app up
install:
	@echo "\033[1;32mClonando Desafio Inpeace - Módulo Api\033[0m"
	@git clone https://github.com/fontourasantana/desafio-inpeace-api api
	@echo "\033[1;32mClonando Desafio Inpeace - Módulo App\033[0m"
	@git clone https://github.com/fontourasantana/desafio-inpeace-app app
prepare-env:
	@echo "\033[1;32mPreparando arquivos .env\033[0m"
	@cp .env api/.env
build-api:
	@echo "\033[1;32mBuildando API\033[0m"
	@docker build -f api/Dockerfile -t desafio-inpeace-api --build-arg GID=$(GID) api
build-app:
	@echo "\033[1;32mBuildando APP\033[0m"
	@docker build -f app/Dockerfile -t desafio-inpeace-app --build-arg API_BASE_URL=$(API_BASE_URL):$(WEBSERVER_PORT) app
up:
	@echo "\033[1;32mIniciando aplicação completa\033[0m"
	@docker-compose up -d
run-migrates:
	@echo "\033[1;32mRodando migrations\033[0m"
	@docker-compose exec api php artisan migrate