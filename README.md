# Desafio Bootcamp Ruby on Rails DIO - Versão POO

Este projeto foi desenvolvido como parte do Bootcamp Ruby on Rails da Digital Innovation One (DIO). Esta é uma versão atualizada que implementa conceitos de Programação Orientada a Objetos (POO), oferecendo uma estrutura mais robusta e organizada para o gerenciamento de estoque.

## Características da Versão POO

- Implementação usando classes e objetos
- Separação de responsabilidades (SRP)
- Persistência de dados em JSON
- Interface amigável via terminal
- Gerenciamento completo de estoque (CRUD)

## Técnicas Implementadas

- Programação Orientada a Objetos
- Manipulação de arquivos JSON
- Interface via terminal usando `terminal-table`
- Tratamento de exceções
- Organização em camadas (MVC)

### Exemplo de Uso do Terminal Table

```ruby
require 'terminal-table'

table = Terminal::Table.new do |t|
  t.headings = ['Nome', 'Idade', 'Cidade']
  t.rows = [
    ['João', '25', 'São Paulo'],
    ['Maria', '30', 'Rio de Janeiro']
  ]
end

puts table
```

## Como Executar

1. Instale as dependências:
```
bundle install
```

2. Execute o programa:
```
ruby main.rb
```

## Funcionalidades

- Cadastro de produtos
- Listagem de produtos
- Adição de itens ao estoque
- Retirada de itens do estoque
- Persistência automática dos dados

## Agradecimentos

Agradeço especialmente ao professor Danilo dos Santos por compartilhar seu conhecimento e experiência durante este bootcamp.