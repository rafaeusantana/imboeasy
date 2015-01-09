README
======


**Sobre**

Este projeto tem o objetivo de desenvolver um sistema contendo funcionalidades básicas de um divulgador de imóveis, para facilitar a vida de desenvolvedores de portais especializados em imóveis e sites de imobiliárias.


**Instalação**

Basicamente, para rodar a aplicação, é necessário baixar o sistema em seu repositório, extrair os arquivos, alterar as configurações de banco de dados em config/database.yml e rodar os seguintes comandos no terminal:

```
# Baixa e instala as gems
bundle install

# Cria ambiente de desenvolvimento
bundle exec rake db:drop RAILS_ENV=development
bundle exec rake db:create RAILS_ENV=development
bundle exec rake db:schema:load RAILS_ENV=development
bundle exec rake db:seed RAILS_ENV=development

# Cria ambiente de teste
bundle exec rake db:drop RAILS_ENV=test
bundle exec rake db:create RAILS_ENV=test
bundle exec rake db:schema:load RAILS_ENV=test
bundle exec rake db:seed RAILS_ENV=test

# Roda o servidor
rails server

# Para rodar os testes
rspec
```

### Licença

Este projeto está sob licença [MIT](http://opensource.org/licenses/MIT).

