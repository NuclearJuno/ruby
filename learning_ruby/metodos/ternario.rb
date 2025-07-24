# nome = "junior"

# if nome.eql?("junior")
#   puts "pokadpoaskd"
# else
#   puts "piosakdfpoaskfd"
# end

#o codigo ternario precisa da condição ?(depois do ponto de interrogação ele executa ou mostra o que seria o verdadeiro) verdadeiro :(depois dos dois ponto se a condição for falsa) falso.
#

nome = "junior"
puts nome.eql?("junior") ? "dono do codigo" : "um ramdom"
  
results = nome.eql?("junior") ? "dono do codigo" : "um ramdom"
  

puts results

n = 5
div = n.eql?(5) ? n / 5 : n - 1
puts div