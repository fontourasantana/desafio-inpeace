# Desafio Inpeace
Este projeto tem como objetivo unir os módulos [APP](https://github.com/fontourasantana/desafio-inpeace-app) e [API](https://github.com/fontourasantana/desafio-inpeace-api) implementados para o desafio proposto.

### Primeiros passos
- Primeiramente é necessário definir qual porta o webserver irá rodar. Por padrão ele está configurado para rodar na porta **80**, caso essa porta esteja sendo utilizada no sistema, basta alterar a váriavel de ambiente **WEBSERVER_PORT** no .env.example
- Com as variáveis de ambiente configuradas, para instalar e configurar o projeto execute:
```bash
make
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
