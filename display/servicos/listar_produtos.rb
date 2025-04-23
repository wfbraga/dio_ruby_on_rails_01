require 'terminal-table'

def listar_produtos

  print_yellow "=========LISTA DE PRODUTOS=========", false, false

 table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Preço', 'Quantidade']
    ProdutoServico.todos.each do |produto|
      t.add_row [produto.id, produto.nome, produto.descricao, produto.preco, produto.quantidade]
    end
 end

 puts table
end
