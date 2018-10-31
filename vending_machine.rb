class VendingMachine
  attr_reader :products
  def initialize
    @products = {
        'A1' => { name: 'Cheetos', price: 50 },
        'B1' => { name: 'Snickers', price: 50 },
        'C1' => { name: 'Sprite', price: 100 },
        'D1' => { name: 'Sandwich', price: 150 }
    }
  end
end
