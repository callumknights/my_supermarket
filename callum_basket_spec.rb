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
    expect(basket.cart_one["FR1"]).to eql(1)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'can add an SR1' do
    basket = Basket.new()
    basket.add("SR1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(1)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'can add an CF1' do
    basket = Basket.new()
    basket.add("CF1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(1)
  end
  it 'can add two FR1' do
    basket = Basket.new()
    basket.add("FR1")
    basket.add("FR1")
    expect(basket.cart_one["FR1"]).to eql(2)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(0)
    end
  it 'can add two SR1' do
    basket = Basket.new()
    basket.add("SR1")
    basket.add("SR1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(2)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'can add two CF1' do
    basket = Basket.new()
    basket.add("CF1")
    basket.add("CF1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(2)
  end
  it 'can remove one FR1' do
    basket = Basket.new
    basket.add("FR1")
    basket.add("FR1")
    basket.remove("FR1")
    expect(basket.cart_one["FR1"]).to eql(1)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'can remove one SR1' do
    basket = Basket.new
    basket.add("SR1")
    basket.add("SR1")
    basket.remove("SR1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(1)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'can remove one CF1' do
    basket = Basket.new
    basket.add("CF1")
    basket.add("CF1")
    basket.remove("CF1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(1)
  end
  it 'doesnt change when removing one FR1, when FR1 is 0' do
    basket = Basket.new
    basket.remove("FR1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'doesnt change when removing one SR1, when SR1 is 0' do
    basket = Basket.new
    basket.remove("SR1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'doesnt change when removing one CF1, when CF1 is 0' do
    basket = Basket.new
    basket.remove("CF1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'can remove two FR1' do
    basket = Basket.new
    basket.add("FR1")
    basket.add("FR1")
    basket.add("FR1")
    basket.add("FR1")
    basket.remove("FR1")
    basket.remove("FR1")
    expect(basket.cart_one["FR1"]).to eql(2)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'can remove two SR1' do
    basket = Basket.new
    basket.add("SR1")
    basket.add("SR1")
    basket.add("SR1")
    basket.add("SR1")
    basket.remove("SR1")
    basket.remove("SR1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(2)
    expect(basket.cart_one["CF1"]).to eql(0)
  end
  it 'can remove two CF1' do
    basket = Basket.new
    basket.add("CF1")
    basket.add("CF1")
    basket.add("CF1")
    basket.add("CF1")
    basket.remove("CF1")
    basket.remove("CF1")
    expect(basket.cart_one["FR1"]).to eql(0)
    expect(basket.cart_one["SR1"]).to eql(0)
    expect(basket.cart_one["CF1"]).to eql(2)
  end
  it 'can calculate total of one FR1' do
    basket = Basket.new
    basket.add("FR1")
    expect(basket.sub_total).to eql(3.11)
  end
  it 'can calculate total of two FR1' do
    basket = Basket.new
    basket.add("FR1")
    basket.add("FR1")
    expect(basket.sub_total).to eql(6.22)
  end
  it 'can calculate total of one SR1' do
    basket = Basket.new
    basket.add("SR1")
    expect(basket.sub_total).to eql(5.00)
  end
  it 'can calculate total of two SR1' do
    basket = Basket.new
    basket.add("SR1")
    basket.add("SR1")
    expect(basket.sub_total).to eql(10.00)
  end
  it 'can calculate total of one CF1' do
    basket = Basket.new
    basket.add("CF1")
    expect(basket.sub_total).to eql(11.23)
  end
  it 'can calculate total total of two CF1' do
    basket = Basket.new
    basket.add("CF1")
    basket.add("CF1")
    expect(basket.sub_total).to eql(22.46)
  end
  it 'can calculate total one of each product' do
    basket = Basket.new
    basket.add("FR1")
    basket.add("SR1")
    basket.add("CF1")
    expect(basket.sub_total).to eql(19.34)
  end
  it 'discount tea test' do
    basket = Basket.new
    basket.add("FR1")
    basket.add("FR1")
    basket.add("FR1")
    basket.add("CF1")
    expect(basket.sub_total).to eql(20.56)
    expect(basket.fruit_tea_price).to eql(6.22)
  end
  it 'discount strawberry test' do
    basket = Basket.new
    basket.add("SR1")
    basket.add("SR1")
    basket.add("SR1")
    expect(basket.strawberries_price).to eql(1.50)
    expect(basket.sub_total).to eql(15.00)
  end




end
