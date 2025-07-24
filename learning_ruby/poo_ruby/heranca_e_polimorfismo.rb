class Animal #super classe
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def message
    puts "woof woof woof"
  end
end

class Cachorro < Animal #aqui vemos como aplicar a herança em um classe filho
  attr_reader :breed

  def initialize(name, breed)
    super(name) #no initialize chamamos os atributos da super classe com o metodo "super"
    @breed = breed
  end
  def message
    puts "au au au a"
  end
end

class Gato < Animal
  attr_reader :breed
  def initialize(name, breed)
    super(name)
    @breed = breed
  end
  def message
    puts "miau miau"
  end
end
dog = Cachorro.new("bob", "Chihuahua")

puts dog.name
puts dog.breed
dog.message
puts "------------"
cat = Gato.new("lince", "Siamese")
puts cat.name
puts cat.breed
cat.message
