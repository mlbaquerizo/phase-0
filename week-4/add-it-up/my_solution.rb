# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge Brian Bier.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array containing numbers
# Output: The sum of all numbers in the array.
# Steps to solve the problem.

# Initialize the sum as 0. This can be added to and re assigned new values
# as we iterate through the array.

# Create a new array that will contain the new sums

# For each number in array, assign sum as sum + number
# push the new sum into new_array

# Return the last number in new_array

# 1. total initial solution
def total(array)
  sum = 0
  new_array = []
  
  array.each do |number|
    sum += number
    new_array.push(sum)
  end
  
return new_array[-1]
end

# 3. total refactored solution

def total(array)
  sum = array.inject(:+)
  sum
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array with strings
# Output: A joined sentence with all of the strings in the array
# Steps to solve the problem.

# Initialize an empty string to push given strings into

# Create a new empty array that will contain the new strings

# For each string in the array, add that string to new_string and push new_string
# into new_array. Add a space to the end of each string

# Satisfy condition where only the last string in string_array does not get a
# space added to the end of it.

# Return the last string in new_array capitalized and add a "." to the end


# 5. sentence_maker initial solution
def sentence_maker(string_array)
new_string = ""
new_array = []

string_array.each do |string|
  if string != string_array[-1]
    new_string += string.to_s + " "
  else
    new_string += string.to_s
  end
  
  new_array.push(new_string)
end
return new_array[-1].capitalize + "."
end

#6. sentence_maker refactored solution

def sentence_maker(string_array)
  string_array.join(" ").capitalize + "."
end