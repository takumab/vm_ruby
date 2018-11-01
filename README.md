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
- I started with TDD (Test Driven Development) in order to shape the overall architecture
of the program by testing first and also test expected behavior of methods.  

- Broke down program/project to the simplest method (choose_and_pay) which allows product
be chosen by entering product's code `choose_and_pay('A1', 50)` and insert money for the
particular product.

- My intention was to, firstly, have the method `choose_and_pay` handle the following
functionality: select item and insert money; return change if overpaid; notify when money
inserted is less than product; remove purchase items; and keep track of change and products.

- After setting up `choose_and_pay` to handle most of the functionality, I wanted
to refactor out keeping track of the products and the coins into their own methods.
In order to keep track, at least for the products, I would've initialized a `@product_inventory`
instance variable with an empty array.

## Issues
- TDD approach and starting with the simplest aspects of the objective was a great idea,
but I ran into a bit of trouble when reaching the 'keep track of products and change' portion.

- As of right now the `choose_and_pay` method does not account for when a user inserts no money,
but enters a code. In this case I would've raised an error stating user must insert some money.

## Long Term Goals
- Make it interactive where the user can enter their selection in the command line
- Create separate functionality for coin and product iventory
