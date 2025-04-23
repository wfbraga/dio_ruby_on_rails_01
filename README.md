# Desafio Bootcamp Ruby on Rails DIO

Este projeto foi desenvolvido como parte do Bootcamp Ruby on Rails da Digital Innovation One (DIO), onde aprendemos técnicas interessantes de programação para terminal.

## Técnicas Aprendidas

Durante o curso, exploramos várias funcionalidades interessantes, incluindo o uso da gem `terminal-table` para criar tabelas bonitas no terminal.

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

## Agradecimentos

Agradeço especialmente ao professor Danilo dos Santos por compartilhar seu conhecimento e experiência durante este bootcamp.