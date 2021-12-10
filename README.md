# Desafio Inpeace
Este projeto tem como objetivo unir os módulos [APP](https://github.com/fontourasantana/desafio-inpeace-app) e [API](https://github.com/fontourasantana/desafio-inpeace-api) implementados para o desafio proposto.

## Plataforma
|Ferramenta|Versão|
|:-:|:-:|
|[Webserver Nginx](https://www.nginx.com/)|1.21.4|
|[Lumen Framework](https://lumen.laravel.com/)|8.3.1|
|[Nuxt.Js](https://nuxtjs.org/)|2.15.7|
|[MySQL](https://www.mysql.com/)|8.0|
|[phpMyAdmin](https://www.phpmyadmin.net/)|5.1|

### Primeiros passos
- Primeiro é necessário fazer a cópia do repositório
```bash
git clone https://github.com/fontourasantana/desafio-inpeace
```
- Após copiar o repositório copie o exemplo do .env fornecido no repositório
```bash
cp .env.example .env
```
**Obs:** O webserver por padrão está configurado para rodar na porta **80**, caso essa porta esteja sendo utilizada no sistema, altere a váriavel de ambiente **WEBSERVER_PORT** no .env
- Com as variáveis de ambiente configuradas, para instalar e rodar o projeto execute:
```bash
make
```
**Atenção:** Caso atualize a **WEBSERVER_PORT** após rodar o comando acima, é necessário rebuildar a imagem da aplicação. Para isso execute:
```bash
make build-app
```
### Executando projeto
```bash
make up
```

### Rotas que o webserver fornece
|         Identificação         |                   URL                    |
|:-------------------------:|:----------------------------------------:|
|    phpMyAdmin     | [phpmyadmin.localhost](http://phpmyadmin.localhost/) |
|  Aplicação  | [localhost](http://localhost/) |
|  API  | [api.localhost](http://api.localhost/) |

*Rotas considerando webserver rodando na porta 80*

### Rotas da API
|Identificação|URL|METHOD|
|:---:|:---:|:---:|
|    Versão do Lumen     | localhost |**GET**|
|    Listar usuários     | localhost/usuarios |**GET**|
|    Salvar usuário     | localhost/usuarios |**POST**|
|    Ver usuário     | localhost/usuarios/{id} |**GET**|
|    Atualizar usuário     | localhost/usuarios/{id} |**PUT**|
|    Deletar usuário     | localhost/usuarios/{id} |**DELETE**|

*Rotas considerando webserver rodando na porta 80*
