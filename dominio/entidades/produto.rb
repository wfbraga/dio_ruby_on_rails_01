class Produto # classe anémica: só tem propriedades
  attr_accessor :id, :nome, :descricao, :preco, :quantidade

  def initialize(produto_hash)
    require 'byebug'
    debugger
    @id = produto_hash["id"].to_i
    @nome = produto_hash["nome"]
    @descricao = produto_hash["descricao"]
    @preco = produto_hash["preco"]
    @quantidade = produto_hash["quantidade"]
  end
end
