class Livro #classe livro 

  attr_reader :name, :year, :price

  def initialize(name, year, price)
    @name = name
    @year = year
    @price = dar_desconto(price)
  end

  def show_data
    puts "Livro: #{self.name}, Ano: #{self.year}, Valor: #{@price}"
  end

  private
  def dar_desconto(price)
    if @year < 2026
        price * 0.9
    else
      price
    end
  end

end

l1 = Livro.new("cronicas", 2024, 50.00)
puts l1.name
puts l1.price
puts l1.year

l1.show_data
