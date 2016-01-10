# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# => Positive Integer
# What is the output? (i.e. What should the code return?)
# => The number that is input, as a string, with commas every thousand place if applicable.
# What are the steps needed to solve the problem?
# =>  IF the string version of the integer is 3 characters or less
# =>    RETURN string
# =>  IF the string version of the integer is more than 3 characters
# =>  Starting from the last character to first
# =>    Place comma after every third character
# =>    IF the length of the string integer is a multiple of 3 AND the length is
# =>    greater than 3
# =>      Do not place comma after last (from back to front) character


# 1. Initial Solution
# def separate_comma(i)
#   num = i.to_s
#   if num.length % 3 == 0 && num.length > 3
#     (num.length - 3).step(3, -3) do |v|
#       num.insert(v, ",")
#     end
#   elsif num.length > 3
#     (num.length - 3).step(0, -3) do |v|
#       num.insert(v, ",")
#     end
#   end
#   num
# end

# 2. Refactored Solution

def separate_comma(i)
  num = i.to_s
  if num.length % 3 == 0 && num.length > 3
    (num.length - 3).step(3, -3) {|v| num.insert(v, ",")}
  elsif num.length > 3
    (num.length - 3).step(0, -3) {|v| num.insert(v, ",")}
  end
  num
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches
# did you consider?
# I figured that I wanted to take a string, and insert commas into the string
# from back to front, every third character. From there I considered cases in
# which I didn't want to have a comma at the first character (0th index) of the
# string, which came down to the length of the string. Initially I did not know
# how I was going to do this, so it took some playing around with the
# String#step arguments to get it right.

# Was your pseudocode effective in helping you build a successful initial
# solution?
# This time my pseudocode was absolutely the approach I ended up using, so I
# found it very useful. With prior challenges I have been somewhat resistant to
# pseudocode but I think I am getting better at it, especially after having
# paired with others who were better at it than me.


# What new Ruby method(s) did you use when refactoring your solution? Describe
# your experience of using the Ruby documentation to implement it/them (any
# difficulties, etc.). Did it/they significantly change the way your code works?
# If so, how?
# I was happy with the succinctness of my code so I did not refactor that much.
# I feel that the way it is now is pretty readable.


# How did you initially iterate through the data structure?
# I used the String#step method, which allowed me to iterate from the third to
# last character down to the first (or third) character, every third character.


# Do you feel your refactored solution is more readable than your initial
# solution? Why?
# It is a bit more readable with the .step methods on their own line. Also each
# case is clearly written out.