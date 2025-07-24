class Estud #todos os atributos ja são privados 
  @nome #atributos da classe
  @idade
  @matricula

  # def mudar_nome(nome) #devemos criar um atributo que permita a mudança do nome 
  #   @nome = nome        #ja que esta tudo privado entao criamos um metodo ou função pra mostrar 
  # end

  # def mostrar 
  #   @nome
  # end
  
  attr_writer :height, :weight #atributo só pra escrever ou gravar informaçoes 

  attr_accessor :name, :year #é um atalho que cria getter e setter para as variaveis em uma classe, e pode ser alterado com 
#estudante1.name = "junior"
# estudante1.year = 35
# e pode tanto escrever reescrever e ler 

  attr_reader :foot_size, :dick_size #aqui o atalho de atributo é só para ler e nao ser alterado
def initialize(foot_size, dick_size) #metodo construtor pra obrigar aos atributos serem preenchidos quando a instacia classe for iniciada ou criada 
    @foot_size = foot_size
    @dick_size = dick_size
  end

  #é bom ter uma função pra mostrar todos os dados 
  def show_data
    puts "Name: #{@name} Year: #{self.year} Foot Size:#{@foot_size} Dick Size:#{@dick_size}"
  end
end


# estudante1.mudar_nome("fulano")
# puts estudante1.mostrar

estudante1 = Estud.new(41, 16) #variavel estudante1 recebe o novo objeto (que é a classe) depois initialize obriga o recebimento de argumentos entre parenteses que seria o preenchimento dos atributos dentro da classe 
estudante1.height = 1.80
estudante1.weight = 80

estudante1.name = "junior"
estudante1.year = 35 #metodo attr_acessor
puts estudante1.name 
puts estudante1.year

puts estudante1.foot_size #metodo reader ja com argumento na criação da classe
puts estudante1.dick_size

puts estudante1.show_data



