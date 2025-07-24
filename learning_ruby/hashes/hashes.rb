# hash={nome:"fulano",
# idade: 25, altura: 1.85,
# humor: "alegre"}
# puts hash

# hash[:comidafav] = "omelete"
# puts hash

hash1 = {:um=>1, :dois=>2, :tres=>3}
hash2= {:quatro=>4, :cinco=>5, :seis=>6}
hash3={sete:7, oito:8, nove:9}
hash3.delete(:oito) #deleta uma chave com seu valor
puts hash3.has_value?(8) #confere se foi deletado !
puts hash3.has_value?(7) #retorna booleano
puts hash3.has_key?(:oito) 
puts hash3
puts hash2.keys #mostra chavesa
puts hash2.values #mostra valores
puts hash1.length #comprimento

puts hash1.clear #limpa tudo da hash