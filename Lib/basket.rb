class Products
  attr_reader :names_codes, :prices, :input, :catalogue

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

  def print_products
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




  class Basket < Products
    attr_reader :cart

    def initialize
      @cart = {
        "FR1" => 0,
        "SR1" => 0,
        "CF1" => 0
      }
    end

    def add(choice)
      puts "What would you like to add to your basket?"
      choice = $stdin.gets.chomp
      if @cart.include?(choice)
        @cart[choice] += 1
      end
      puts @cart
    end
  end









end

basket = Basket.new()

products = Products.new()

#puts products.print_products()

#puts products.get_price()

puts basket.add()
