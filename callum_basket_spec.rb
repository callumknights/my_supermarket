=begin require 'callum_basket'

describe Basket do
  basket = Basket.new
  describe '#add' do
    it 'can add a valid item' do
      basket = Basket.new(cart_one)
       basket.add("FR1")
      expect(cart_one["FR1"]).to eq(1)
    end
  end
end
=end

require 'callum_basket'


describe Basket do
  it 'can add an FR1' do
    basket = Basket.new()
    basket.add("FR1")
  expect(basket.print_basket["FR1"]).to eql(1)
 end
end
