=begin
class Products
  attr_reader :names_codes, :prices, :catalogue, :price, :line_price

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
    @price = price
    @line_price = line_price
  #  @input = input
  end
end
=end


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

  attr_reader :cart_one, :prices, :jon, :line_price, :catalogue, :names_codes

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

    @cart_one = {
      "FR1" => 0,
      "SR1" => 0,
      "CF1" => 0
    }
    @jon = 0

  end

  def add(choice)
    #puts "What would you like to add to your basket"
    if @cart_one.include?(choice)
      @cart_one[choice] += 1
   end
   puts @cart_one
  end

  def remove(choice)
    if @cart_one.include?(choice) && @cart_one[choice] != 0
      @cart_one[choice] -= 1
    end
    puts @cart_one
  end
=begin
  def show_price
    work = 0
    #puts @cart_one #+ "!!!!!!!!!!!!!!"
    @cart_one.each do | p_code, quantity |
      line_price = (quantity * (@prices[p_code]))
      work = work + line_price
    end
    #puts @jon
    #price = @cart_one.each { |key, value| if key == @prices.key return @prices.value * value end }
    puts work
    return work
  end

  def fruit_tea_price
    if @cart_one["FR1"] % 2 = 0
      (@cart_one["FR1"] / 2) * @prices["FR1"]
    elsif @cart_one["FR1"] > 1 && @cart_one["FR1"] % 2 = 1
      (@cart_one["FR1"] - 1 / 2 + 1) * @prices["FR1"]
    end
  end

  def strawberries_price
    if @cart_one["SR1"] >= 3
=end
  def sub_total
    subt = 0
    #puts @cart_one #+ "!!!!!!!!!!!!!!"
    @cart_one.each do | p_code, quantity |
      line_price = (quantity * (@prices[p_code]))
      subt = subt + line_price
      #subt = subt.round(2)
    end
    puts subt
    subt
  end

  def fruit_tea_price
    if @cart_one["FR1"] % 2 == 0
      tea = (@cart_one["FR1"] / 2) * @prices["FR1"]
    elsif @cart_one["FR1"] > 1 && @cart_one["FR1"] % 2 == 1
    tea = (sub_total - (@cart_one["FR1"] - 1 / 2 + 1) * @prices["FR1"])
    end
    puts tea
    tea
  end

  def strawberries_price
    if @cart_one["SR1"] >= 3
    str = 0.5 * @cart_one["SR1"]
    end
    puts str
    str
  end
end


=begin basket = Basket.new()

products = Products.new()

#puts products.print_products()

#puts products.get_price()

puts basket.add()
=end
