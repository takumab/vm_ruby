# Vending Machine (Ruby)


## Objective

- Once an item is selected and the appropriate amount of money is inserted, the vending machine should return the correct product.
- It should also return change if too much money is provided, or ask for more money if insufficient funds have been inserted.
- The machine should take an initial load of products and change. The change will be of denominations 1p, 2p, 5p, 10p, 20p, 50p, £1, £2.
- There should be a way of reloading either products or change at a later point.
- The machine should keep track of the products and change that it contains.

# Dependencies

## Testing
```
gem 'rspec'
```
### Run Spec/Examples
`bundle exec rspec spec/vending_machine_spec.rb`

# Installation
```
$git clone https://github.com/takumab/vm_ruby
$cd vm_ruby
```
## Process
I started with TDD (Test Driven Development) in order to shape the overall architecture
of the program by testing first and also test expected behavior of methods.  
