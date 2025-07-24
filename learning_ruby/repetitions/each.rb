arrayNomes = ["joao", "junior", "lana", "mateus"]

hashNomes = {nome: "fulano", idade: 20, altura: 1.70}

arrayNomes.each do |arrayNomes| #o que esta dentro da pipline é uma variavel temporaria que terá cada item por vez do array 
  puts arrayNomes
end

hashNomes.each {|c, v|
puts "#{c}: #{v}"
}