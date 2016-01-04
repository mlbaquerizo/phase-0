# Factorial

# I worked on this challenge Brian Bier.


# Your Solution Below
def factorial(number)
  # satisfy condition where 0! = 1
  if number == 0
    1
  # satisfy condition where number > 0
  else
  # make an array to store all numbers from 1 --> number
    array = []
    start = 0
    while start < number do
      start += 1
      array.push(start)
    end
  
  # make a new array to store products
    new_array = []
    
  # initialize product at 1
    product = 1
    
  # for each number in array, store the product as (product * number)
  # and push the new product to new_array
    array.each do |num|
      product *= num
      new_array.push(product)
    end
    
  # return the integer stored in the last index of new_array
    new_array[-1]
  end
end