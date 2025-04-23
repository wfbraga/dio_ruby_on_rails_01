
class ProdutoServico # unit of work
  @arquivo = 'db/produtos.json'
  def self.todos
    dados = JsonRepository.ler(@arquivo)
    produtos = []
    dados.each do |dado|
      produtos << Produto.new(dado)
    end
    produtos
  end
  def self.adicionar(produto)
    produto_hash = tranformar_para_hash(produto)
    JsonRepository.adicionar(@arquivo, produto_hash)
  end

  def self.atualizar(produto)
    dados = JsonRepository.ler(@arquivo)
    produto_hash = dados.find { |dado| dado['id'] == produto.id }
    produto_hash['quantidade'] = produto.quantidade
    produto_hash['preco'] = produto.preco
    produto_hash['descricao'] = produto.descricao
    produto_hash['nome'] = produto.nome

    JsonRepository.gravar(@arquivo, produto_hash)
  end

  private

  def self.tranformar_para_hash(produto)
    produto.instance_variables.each_with_object({}) do |var, hash|
      hash[var.to_s.delete("@").to_sym] = produto.instance_variable_get(var)
    end
  end
end
