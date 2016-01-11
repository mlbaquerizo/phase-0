# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent .5 hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: sides method => number of sides; roll method => random number between
#         1 and number of sides
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Number of sides should be greater than 1")
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution



# N/A



# 4. Reflection
# What is an ArgumentError and why would you use one?
# An ArgumentError is an error that comes up when and invalid argument is passed
# through a method. This is useful for making a class act as close to expected
# as possible.

# What new Ruby methods did you implement? What challenges and successes did you
# have in implementing them?
# the rand method is not new to me but I did have some trouble implementing it
# at first. With just a max value as an argument it allows 0 to be returned, so
# I needed to pass a range from 1 to the number of sides through it.
# The new method I used was the raise method for raising an ArgumentError. This
# was easy to use.


# What is a Ruby class?
# A Ruby class is like a blueprint for a type of object. They are used to set
# attributes such as methods that can be used on objects of that class.


# Why would you use a Ruby class?
# Ruby classes are useful for creating multiple objects of the same type.

# What is the difference between a local variable and an instance variable?
# A local variable can only be called within a method while an instance variable
# can be called both in and outside a method. For the die class example, @sides
# was an instance variable that was used throughout the class in various
# methods.

# Where can an instance variable be used?
# An instance variable can be used within a class in multiple methods.