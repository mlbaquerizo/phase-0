# Pad an Array

# I worked on this challenge with Peter Leong

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# What is the input?
# The input is an array, the minimum size of the output array, and a padding if the minimum size is greater than the array's original size.

# What is the output? (i.e. What should the code return?)
# An array that includes the original array at the given minimum size, with padding if needed. 

# What are the steps needed to solve the problem? 
# Non-destructive-
# If the minimum size <= length of the array return the array.
# else return the array plus the difference between the minimum size and the array length padded with the optional argument.
# return new array
# Destructive-
# If the minimum size <= length of the array return the array.
# else return the array plus the difference between the minimum size and the array length padded with the optional argument.
# returned changed array


# 1. Initial Solution
# def pad!(array, min_size, value = nil) 
#   if min_size <= array.length
#     return array
#   elsif
#     min_size == 0
#     return array
#   else
#     until array.length == min_size
#       new_array = array.push(value)
#     end
#     array = new_array
#     return array
#   end
    
# end

# def pad(array, min_size, value = nil) 
#     new_array = array.dup
#   if min_size <= array.length
#     return new_array
#   elsif
#     min_size == 0
#     return new_array
#   else
#     until new_array.length == min_size
#       new_array.push(value)
#     end
#     return new_array
#   end
    
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) 
  array.fill(value, array.length...min_size) unless min_size <= array.length
  array
end

def pad(array, min_size, value = nil)
  new_array = array.dup
  new_array.fill(value, array.length...min_size) unless min_size <= array.length
  new_array
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# I would say we were somewhat successful. We broke it down into the various
# cases for min_size and we knew what we needed to do. We just did not
# anticipate some of the errors we were getting, so as we were going along we
# had to break it down even more.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# To be honest our pseudocode was kind of abandoned after we got rolling. I
# think the reason for this is because we weren't sure how to word the steps
# into readable English.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our initial solution passed the tests after a few attempts. We had to play
# around with it a bit. Thinking about it case-by-case and looking through the
# rspec file helped. For the indestructive method, we missed a key point that
# the method should return an array with a different name than the one input.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# I focused on shortening the if/else statements, but Peter found the .fill
# method which was exactly what we needed to clean up the code. We were able to
# use .fill to specify what to fill and a range within the array to fill.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think our solution is pretty readable. We went with the variable names that
# were included in the file, which are descriptive enough in my opinion. I think
# anyone looking at this code who has some knowledge of Ruby can figure out what
# it is doing.

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods take in an object and output that same object, but changed
# by the code in the method. Non-destructive methods take in an object, make a
# copy of it, and output the changed copy.