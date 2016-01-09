# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? 
# => Array of numbers or strings
# What is the output? (i.e. What should the code return?)
# => Array of most frequent value(s) from input array
# What are the steps needed to solve the problem?
# => Map array to a hash with key = array objects, value = frequency of object in array
# => return array of key with highest value.

# hash = {}
# num_a = []
# final_a = []

# for each value in the array
#   make that value a key in the hash

# for each value in the array
#   if value = key in the hash
#     add 1 to the value for that key
        
# num_a = hash values sorted

# for each key,value in hash
#   if the value = last object in num_a (largest number)
#     push key to final_a

# return final_a


# 1. Initial Solution

# def mode(array)
#   hash = Hash.new(0)
#   num_a = []
#   final_a = Array.new
  
#   array.each do |value|
#     hash[value] += 1
#   end
  
#   num_a = hash.values.sort

#   hash.each do |k,v|
#     if v == num_a[-1]
#       final_a << k
#     end
#   end
  
#   return final_a
# end

# 3. Refactored Solution
def mode(array)
  hash = Hash.new(0)
  final_a = Array.new
  
  array.each { |val| hash[val] += 1 }
  
  hash.each { |k,v| final_a << k if v == hash.values.sort[-1] }

  final_a
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# We went with the hint given in the challenge and implements a hash that took
# the values in the array as its keys and the frequency of the values in the
# array as its values.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# I think we were more successful than I expected as I have not been too
# successful with pseudocode in the past. Our final code does translate from the
# pseudocode with some extra steps added.

# What issues/successes did you run into when translating your pseudocode to code?
# I think our major issue was when initializing the new hash. At first we
# initialized it as an empty hash (i.e. hash = {}) and we had a lot of problems
# with setting up key,value pairs from the array. We realized we initialized the
# values at nil by doing this and not 0 as we wanted.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# One that we found during our initial solution was the .values method for hash.
# This created an array of the values in the hash, which made it simple to
# retrieve the highest frequency.