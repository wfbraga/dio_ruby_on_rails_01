def init_menu
   loop do
    print_yellow "=========MENU========="
    print_green "1 - Cadatro producto"
    print_green "2 - Mostrar productos"
    print_green "3 - Adicionar ao Estoque"
    print_green "4 - Retirar do Estoque"
    print_green "5 - Sair"
    print_yellow "======================"

    option = gets.to_i

    case option
    when 1
      cadastrar_produto
    when 2
      listar_produtos
    when 3
      adicionar_estoque
    when 4
      retirar_estoque
    when 5
      system("clear")
      exit
    else
      mesages "Opção inválida, tente novamente."
    end
   end
end
