require_relative 'display/menu'
require_relative 'display/screen_operation'
require_relative 'display/servicos/cadastrar_produto'
require_relative 'display/servicos/listar_produtos'
require_relative 'display/servicos/retirar_estoque'
require_relative 'dominio/servicos/produto_servico'
require_relative 'dominio/entidades/produto'
require_relative 'infraestrutura/json_repository'



# Inicializa o menu com os produtos
# Exemplo de produtos para inicializar o menu
# Cada produto tem um id único, nome, descrição, preço e quantidade em estoque

init_menu
