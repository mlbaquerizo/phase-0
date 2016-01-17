# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Matthew ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: credit card number (string)
# Output: true/false (boolean)
# Steps: create creditcard (class).  Going to accept a credit card number as argument.  Define check_card method.  Split the string to seperate numbers, then convert to integers. Iterate through array, only doubling indexes that evenly divisible by 2. Assign doubled values to new array. Convert new array to string, split string, convert to integer and add.  Check to see if number is divisible evenly by 10.  If it is return true.

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(numbers)
#     @numbers = numbers
        
#     raise ArgumentError.new("#{@numbers} should be 16 digits. Your number was #{@numbers.length} digits") unless @numbers.length == 16
  
#   end

  
#   def check_card
      
#     numbers_array = @numbers.split('')
    
#     numbers_array.map! do |num|
#       num.to_i
#     end
   
#     numbers_array.each_index do |i|
#       if i % 2 == 0
#         numbers_array[i] *= 2
#       end
#     end
    
#     numbers_array.map! do |x|
#       x.to_s.split('')
#     end
#     numbers_array.flatten!
    
#     numbers_array.map! do |num|
#       num.to_i
#     end
    
#     sum = numbers_array.inject{|sum, x| sum + x}
#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end
    
#   end
  
# end

# creditcard = CreditCard.new("1234567891011109021")
# p creditcard.check_card



# Refactored Solution

class CreditCard
  def initialize(numbers)
    @numbers = numbers
        
    raise ArgumentError.new("#{@numbers} should be 16 digits. Your number was #{@numbers.length} digits") unless @numbers.length == 16
  end
  
  def check_card
    numbers_array = @numbers.split('').map! do |num|
      num.to_i
    end
    
    numbers_array.each_index do |i|
       numbers_array[i] *= 2 if i % 2 == 0
    end
    
    #Feels like we should be able to refactor, but not sure how
    numbers_array.map! do |x|
      x.to_s.split('')
    end
        
    numbers_array.flatten!.map! do |num|
      num.to_i
    end
    sum = numbers_array.inject{|sum, x| sum + x}
    sum % 10 == 0 ? true : false
  end
end

# We decided to initialize a new instance of the class with a string rather than
# a number, even though it DOES NOT PASS THE RSPEC tests this way. If a number
# begins with 0 and another digit is greater than 7, it fails to be initialized
# due to it being read as an octal digit. It also makes sense from a logical/
# programming perspective as a credit card number should not behave as a number.

creditcard = CreditCard.new("0434567891331120")
p creditcard.check_card

# Reflection
# What was the most difficult part of this challenge for you and your pair?
# The most difficult part of this challenge was trying to figure out how to
# refactor our solution. We also got stuck for a bit because our code seemed
# good but we weren't passing the rspec tests. We figured out that it was
# because we were passing strings into the class and the rspec tests expected
# numbers. That was easy enough to fix but we didn't notice it for a good 15
# minutes.

# What new methods did you find to help you when you refactored?
# We implemented the .inject method in our initial solution but the concept of
# it was new to us. I have previously used it before without fully understanding
# how it worked. I now know that the method is passed an accumulator and an
# operation and runs that operator through each object given.

# What concepts or learnings were you able to solidify in this challenge?
# I was able to solidify creating classes, and instance variables and methods. I
# also got good practice with logic behind methods.