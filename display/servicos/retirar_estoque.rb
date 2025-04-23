require 'terminal-table'

def retirar_estoque
  print_yellow "=========RETIRAR DO ESTOQUE=========", false, false

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Quantidade']
    ProdutoServico.todos.each do |produto|
      t.add_row [produto.id, produto.nome, produto.quantidade]
    end
  end

  puts table
  print_blue "Digite o código do produto a ser retirado: ", false, false

  id_produto = gets.to_i
  produto_encontrado = ProdutoServico.buscar_por_id(id_produto)

  if produto_encontrado.nil?
    print_red "Produto não encontrado."
    return
  end

  print_blue "Digite a quantidade a ser retirada: ", false, false
  quantidade = gets.to_i

  if quantidade > produto_encontrado.quantidade
    print_red "Quantidade inválida, não pode ser maior que a quantidade em estoque."
    return
  end

  produto_encontrado.quantidade -= quantidade
  ProdutoServico.atualizar(produto_encontrado)

  print_green "Produto retirado com sucesso!"
  print_yellow "Produto: #{produto_encontrado.nome}"
  print_yellow "Quantidade retirada: #{quantidade}"
  print_yellow "Quantidade restante: #{produto_encontrado.quantidade}"
  print_yellow "===================================="
  print_yellow "Pressione qualquer tecla para continuar..."
  gets
  system("clear")
end
