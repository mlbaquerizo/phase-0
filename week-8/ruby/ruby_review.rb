# Reverse Words


# I worked on this challenge myself.
# This challenge took me 30 hours.

# Pseudocode

# input: sentence as a string
# output: new string with each word reversed (not the whole sentence reversed)

# Split string into an array of strings, separated by space.
# For each string in the array,
#   reverse string in array
# Return new string of each string in the array combined.


# Initial Solution


# def reverse_words(string)
#   str_array = string.split(" ")
#   str_array.each do |word|
#     word.reverse!
#   end
#   new_string = str_array.join(" ")
#   new_string
# end

# Refactored Solution

def reverse_words(string)
  reversed_words = string.split(" ").each { |word| word.reverse! }.join(" ")
  reversed_words
end

# test_string = "This is not a test string"
# test = reverse_words(test_string)
# p test



# Reflection

# What concepts did you review or learn in this challenge?
# I reviewed some commonly used string and array methods. Although these
# methods are similar to some Javascript methods, they work differently and
# reviewing them in Ruby helped to refresh my Ruby syntax knowledge.

# What is still confusing to you about Ruby?
# I am confused about refactoring. I just can't seem to let go of my initial
# logic and reasoning or the idea that my initial solution is DRY or concise
# enough. I need to start thinking of different ways to approach problems.


# What are you going to study to get more prepared for Phase 1?
# I want to touch up on my mathematical logic and even symbolic logic, as well
# as Classes and debugging.