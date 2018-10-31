class VendingMachine
  attr_reader :products, :coins
  def initialize
    @products = {
        'A1' => { name: 'Cheetos', price: 50 },
        'B1' => { name: 'Snickers', price: 50 },
        'C1' => { name: 'Sprite', price: 100 },
        'D1' => { name: 'Sandwich', price: 150 }
    }

    @coins = {
      1 => 1,
      2 => 1,
      5 => 1,
      10 => 1,
      20 => 1,
      50 => 1,
      100 => 1,
      200 => 1
    }
  end

  def choose_and_pay(code, amount_paid)
    @products[code][:name]
  end
end
