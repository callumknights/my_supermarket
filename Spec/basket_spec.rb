require 'basket'

describe Basket do
  basket = Basket.new
  describe '#add' do
    it 'can add a valid item' do
      basket = Basket.new(cart)
      basket.add("FR1")
      expect(basket.cart["FR1"]).to eq(1)
    end
  end
       
