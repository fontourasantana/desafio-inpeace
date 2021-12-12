# Desafio Inpeace

Este projeto tem como objetivo unir os módulos [APP](https://github.com/fontourasantana/desafio-inpeace-app) e [API](https://github.com/fontourasantana/desafio-inpeace-api) implementados para o desafio proposto.

## Requisitos

|Ferramenta|Versão Testada|
|:-:|:-:|
|[Docker Engine](https://docs.docker.com/engine/)|20.10.11|
|[Docker Compose](https://docs.docker.com/compose/)|1.28.5|
|[GNU Make](https://www.gnu.org/software/make/)|4.2.1|


## Plataforma

|Ferramenta|Versão|
|:-:|:-:|
|[Webserver Nginx](https://www.nginx.com/)|1.21.4|
|[Lumen Framework](https://lumen.laravel.com/)|8.3.2|
|[Nuxt.Js](https://nuxtjs.org/)|2.15.8|
|[MySQL](https://www.mysql.com/)|8.0|
|[phpMyAdmin](https://www.phpmyadmin.net/)|5.1|

## Primeiros passos

- Primeiro é necessário fazer a cópia do repositório
```bash
git clone https://github.com/fontourasantana/desafio-inpeace && cd desafio-inpeace
```
- Após copiar o repositório copie o exemplo do .env fornecido no repositório
```bash
cp .env.example .env
```
**Obs:** O webserver por padrão está configurado para rodar na porta **80**, caso essa porta esteja sendo utilizada no sistema, altere a váriavel de ambiente **WEBSERVER_PORT** no .env
- Com as variáveis de ambiente configuradas, para buildar e rodar o projeto execute:
```bash
make
```
- Após a execução do comando `make` o projeto já estará executando, para detalhes das rotas acessar [Rotas do webserver](#rotas-do-webserver)

**Atenção:** Para o funcionamento adequado da API, é necessário rodar as migrations. Para isso rode o seguinte comando com o projeto em execução completamente inicializado (na primeira inicialização o serviço do mysql demora um pouco para inicializar por completo):
```bash
make run-migrates
```
**Atenção:** Caso atualize a **WEBSERVER_PORT** após rodar o comando `make`, é necessário rebuildar a imagem da aplicação. Para isso execute:
```bash
make build-app
```
- Para mais comandos acessar [Comandos opcionais](#comandos-opcionais)

## Executando projeto

- Para iniciar a execução do projeto rode o comando:
```bash
make up
```
- Para parar a execução do projeto rode o comando:
```bash
make down
```

## Comandos opcionais

- Para uma melhor experiência, caso deseje que o banco de dados seja povoado você pode rodar o comando que faz o seed no banco:
```bash
make run-seeders
```
- Para rodar os testes da API:
```bash
make run-tests
```
**Obs:** Para rodar os testes é necessário estar com a imagem da api buildada
- Para buildar a imagem da api:
```bash
make build-api
```
- Para buildar a imagem da aplicação:
```bash
make build-app
```

## Rotas do webserver

|         Identificação         |                   URL                    |
|:-------------------------:|:----------------------------------------:|
|    phpMyAdmin     | [phpmyadmin.localhost](http://phpmyadmin.localhost/) |
|  Aplicação  | [localhost](http://localhost/) |
|  API  | [api.localhost](http://api.localhost/) |

*Rotas considerando webserver rodando na porta 80*

## Rotas da api
|Identificação|URL|METHOD|
|:---:|:---:|:---:|
|    Versão do Lumen     | {API_URL} |**GET**|
|    Listar usuários     | {API_URL}/usuarios |**GET**|
|    Salvar usuário     | {API_URL}/usuarios |**POST**|
|    Ver usuário     | {API_URL}/usuarios/{id} |**GET**|
|    Atualizar usuário     | {API_URL}/usuarios/{id} |**PUT**|
|    Deletar usuário     | {API_URL}/usuarios/{id} |**DELETE**|

**Obs:** Considerar **{API_URL}** a rota para a URL da API fornecida pelo webserver
