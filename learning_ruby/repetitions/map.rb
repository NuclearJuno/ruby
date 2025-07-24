arrayNomes = ["joao", "junior", "lana", "mateus"]

arrayDeSobrenomes = arrayNomes.map do |cadaNome|
  cadaNome + " Respectivo Sobrenome"
end
puts arrayDeSobrenomes