class Products
  attr_reader :names_codes, :prices, :catalogue

  def initialize
    @catalogue = {
      "Fruit tea" => 3.11,
      "Strawberries" => 5.00,
      "Coffee" => 11.23
    }
    @names_codes = {
      "Fruit tea" => "FR1",
      "Strawberries" => "SR1",
      "Coffee" => "CF1"
    }
    @prices = {
      "FR1" => 3.11,
      "SR1" => 5.00,
      "CF1" => 11.23
    }
  #  @input = input
  end
end



class Basket

=begin  def print_products
    puts "Here are the products we offer..."
    puts @catalogue.each { |product, price| puts "#{product}, which costs £#{price}."}
  end

  def get_price
    puts "What is the code of the item you wish to look up?"
    input = $stdin.gets.chomp
    if @prices.has_key?(input)
      return @prices.fetch(input)
    end
   end

=end

  attr_reader :cart_one, :prices

  def initialize
    @cart_one = {
      "FR1" => 0,
      "SR1" => 0,
      "CF1" => 0
    }
  end

  def self.build(products)
    basket = self.new
    basket.basketvalue = products.prices
    basket
  end

  def print_basket
    @cart_one
  end



  def add(choice)
    choice = "FR1"
    #puts "What would you like to add to your basket"
    if @cart_one.include?(choice)
      @cart_one[choice] += 1
   end
   puts @cart_one
  end

  def remove(choice)
    if @cart_one.include?(choice)
      @cart_one[choice] -= 1
    end
    puts @cart_one
  end

  def show_basket
    price = 0
    @cart_one.each do | p_code, quantity |
      line_price = quantity * @prices[p_code]
      price = price + line_price
    end
    #price = @cart_one.each { |key, value| if key == @prices.key return @prices.value * value end }
      price
  end


end

=begin basket = Basket.new()

products = Products.new()

#puts products.print_products()

#puts products.get_price()

puts basket.add()
=end
