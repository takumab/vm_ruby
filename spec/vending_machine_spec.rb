require 'spec_helper'
require './vending_machine'

RSpec.describe VendingMachine do
  before do
    @vm = VendingMachine.new
  end

  it "should take an initial load of products and change." do
    expect(@vm.products).to eq({
        'A1' => { name: 'Cheetos', price: 50 },
        'B1' => { name: 'Snickers', price: 50 },
        'C1' => { name: 'Sprite', price: 100 },
        'D1' => { name: 'Sandwich', price: 150 }
      })

    expect(@vm.coins).to eq({
      1 => 1,
      2 => 1,
      5 => 1,
      10 => 1,
      20 => 1,
      50 => 1,
      100 => 1,
      200 => 1
    })
  end

  it "should ensure item is selected and the appropriate amount of money is inserted" do
    expect(@vm.choose_and_pay('A1', 50)).to eq('Vended: Cheetos')
  end

  it "should ask for more money if insufficient funds have been inserted." do
    expect(@vm.choose_and_pay('A1', 40)).to eq("Please insert 10p more")
  end

  it "should return the correct product." do
    expect(@vm.choose_and_pay('D1', 150)).to eq('Vended: Sandwich')
  end

  it "should also return change if too much money is inserted" do
    expect(@vm.choose_and_pay('D1', 200)).to eq("Vended: Sandwich and your change: 50p")
  end

  it "should keep track of the products and change that it contains." do
  end
end
