# Reverse Words


# I worked on this challenge myself.
# This challenge took me [#] hours.

# Pseudocode

# input: sentence as a string
# output: new string with each word reversed (not the whole sentence reversed)

# Split string into an array of strings, separated by space.
# For each string in the array,
#   reverse string in array
# Return new string of each string in the array combined.


# Initial Solution

test_string = "This is not a test string"

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
  reversed = string.split(" ").each { |word| word.reverse! }.join(" ")
  reversed
end

test = reverse_words(test_string)
p test


# Reflection

