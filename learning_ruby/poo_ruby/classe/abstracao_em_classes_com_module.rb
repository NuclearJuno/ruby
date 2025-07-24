require_relative "../modulo_abstracao" #traz a abstração de outro arquivo 

module Algo
  def faz_algo
    puts "algo"
  end
end

class Carro 
include Algo, Algo2
attr_reader :model, :year, :color

  def initialize(model, year, color)
    @model = model
    @year = year
    @color = color
  end

end

class Suv < Carro
attr_reader :n_door, :publicc
  def initialize(model, year, color, n_door, publicc)
    super(model, year, color)
    @n_door = n_door
    @publicc = publicc
  end
end

c1 = Suv.new("SUV", 2025, "white", "4 doors", "Family type")
puts c1.model
puts c1.faz_algo
puts c1.faz_mais_algo