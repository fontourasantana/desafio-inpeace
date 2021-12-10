default: install prepare build-up
install:
	@echo "\033[1;32mClonando Desafio Inpeace - Módulo Api\033[0m"
	@git clone https://github.com/fontourasantana/desafio-inpeace-api api
	@echo "\033[1;32mClonando Desafio Inpeace - Módulo App\033[0m"
	@git clone https://github.com/fontourasantana/desafio-inpeace-app app
prepare:
	@echo "\033[1;32mPreparando arquivos .env\033[0m"
	@cp .env.example .env
	@cp .env.example api/.env
build-up:
	@echo "\033[1;32mIniciando aplicação completa\033[0m"
	@docker-compose up -d --build
	@docker-compose exec api php artisan migrate
up:
	@echo "\033[1;32mIniciando aplicação completa\033[0m"
	@docker-compose up -d