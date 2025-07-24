class Calculadora
  def somar(*args) #a palavra reservada *args é capaz de receber quantos argumentos forem necessarios colocando os em uma lista do mesmo nome
    lista = [] #aqui criamos uma lista pra armazenar os argumentos passados posteriormente
    lista.push(*args) # aqui atravez do incremento, mandamos os argumentos passados para alista atravez do push
    lista.inject(:+) # entre cada elemento listado ele soma ou injeta o que eu pedi
  end
end

# c1 = Calculadora.new
# resultado = c1.somar(5, 5, 6)
# puts resultado

class Aluno
  def notas(*args)
    notas = []
    notas.push(*args)
    notas
  end
end

a1 = Aluno.new 
notas_a1 = a1.notas(5, 6, 7, 8, 10)
puts notas_a1