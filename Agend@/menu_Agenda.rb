require_relative "Agenda.rb"

def todos_contatos
  @agenda.each do |contato|
  puts "#{contato[:nome]} - #{contato[:telefone]}"
  end
  puts "-----------------------------------------\n"
  puts "                      "
end
def adicionar_contato
  puts "Agora Adicione o Nome do Contato"
  print "Nome: "
  nome = gets.chomp
  puts"Agora o Telefone do Contato"
  print "Telefone: "
  telefone = gets.chomp

@agenda << {nome: nome, telefone: telefone}
end

def ver_Contato
print "Qual contato deseja visualizar? "
nome = gets.chomp
  @agenda.each do |contato|
    if contato[:nome].downcase.include?(nome.downcase)
      puts"      "
      puts "#{contato[:nome]} - #{contato[:telefone]}"  
    end
  end
puts "         "
end


def editar_contato
  print "Qual contato deseja editar? "
  
  nome = gets.chomp
  @agenda.each do |contato|
    if contato[:nome].downcase.include?(nome.downcase)

    puts"Nome encontrado "

    puts "#{contato[:nome]} - #{contato[:telefone]}"

    nome_salvo = contato[:nome]
    print "Edite o nome "
    contato[:nome] = gets.chomp
    contato[:nome] = contato[:nome].empty? ? nome_salvo : contato[:nome] 

    puts "#{contato[:nome]} - #{contato[:telefone]}"
    
    telefone_salvo = contato[:telefone]
    puts "Edite o telefone "
    puts "Para desistir aperte Enter"
    contato[:telefone] = gets.chomp
    contato[:telefone] = contato[:telefone].empty? ? telefone_salvo : contato[:telefone] 
    
    puts "#{contato[:nome]} - #{contato[:telefone]}"
    
    end
  end
  puts "-----------------------------"
end

def remover_contato
  print"Qual contato deseja remover ? "
  nome = gets.chomp
  @agenda.each do |contato|
    if contato[:nome].downcase.include? (nome.downcase)
      indice = @agenda.index(contato)
      puts"O contato removido foi "
      puts "#{contato[:nome]} - #{contato[:telefone]} - Contato numero: #{indice}"
      @agenda.delete_at(indice)
      break
    end
  end
  puts"Contato removido com sucesso!"
  puts"----------------------"
end

loop {
puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair\n"
    puts"                     "
    codigo = gets.chomp.to_i
    puts "                   "
  case
    when codigo == 0
        puts "Até Breve"
        break
    when codigo == 1
      puts "Você solicitou os Contatos"
      todos_contatos
    when codigo == 2
      adicionar_contato
    when codigo == 3
      ver_Contato
    when codigo == 4
      editar_contato
    when codigo == 5
      remover_contato
    end
}
