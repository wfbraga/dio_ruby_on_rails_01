require 'terminal-table'

def adicionar_estoque

  print_yellow "=========ADICIONAR AO ESTOQUE=========", false, false

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Quantidade']
    ProdutoServico.todos.each do |produto|
      t.add_row [produto.id, produto.nome, produto.quantidade]
    end
  end

  puts table
  print_blue "Digite o código do produto a ser adicionado: ", false, false

  id_produto = gets.to_i
  produto_encontrado = produtos.find { |produto| produto[:id] == id_produto }

  if(!produto_encontrado)
    print_red "Produto não encontrado."
    adicionar_estoque(produtos)
  end

  print_blue "Digite a quantidade a ser adicionada: ", false, false
  quantidade = gets.to_i
  if quantidade <= 0
    print_red "Quantidade inválida, deve ser maior que zero."
    return
  end

  produto_encontrado[:quantidade] += quantidade
  print_green "Produto adicionado com sucesso!"
  print_yellow "Produto: #{produto_encontrado[:nome]}"
  print_yellow "Quantidade adicionada: #{quantidade}"
  print_yellow "Quantidade total: #{produto_encontrado[:quantidade]}"
  print_yellow "======================================"
  print_yellow "Pressione qualquer tecla para continuar..."
  gets
  system("clear")

end
