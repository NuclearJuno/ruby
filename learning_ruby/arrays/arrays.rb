lista= []

lista.push("junior", "lelo", "fulano") #adiciona por ultimo
lista << "ciclano" #adiciona por ultimo 
lista <<  "mary"
lista.insert(0, "beltrano") #insere em uma posição especifica
lista.delete("beltrano") #deleta uma posição na lista
puts lista
puts "impressão da lista pela interpolação"
puts "#{lista}"
puts "impressão especifica"
puts lista[3..4]
puts "impressão da lista mas ordenadamente a-b"
puts lista.sort
puts "impressão do primeiro elemento"
puts lista.first
puts "impressão do ultimo elemento"
puts lista.last
