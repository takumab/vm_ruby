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
    if amount_paid < @products[code][:price]
      "Please insert #{@products[code][:price] - amount_paid}p more"
    elsif amount_paid > @products[code][:price]
      change = amount_paid - @products[code][:price]
      "Vended: #{@products[code][:name]} and your change: #{change}p"
    else
      "Vended: #{@products[code][:name]}"
    end
  end
end

# Few examples of a vending machine instance
vm = VendingMachine.new
vm.choose_and_pay('A1', 30)
vm.choose_and_pay('A1', 50)
vm.choose_and_pay('D1', 200)
vm.choose_and_pay('C1', 40)
vm.choose_and_pay('C1', 50)
