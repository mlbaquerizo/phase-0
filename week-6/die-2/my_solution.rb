# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Input an array of strings to initialize a new object of the Die class
# Output: A "die" with labels (strings in array), number of sides, and a roll method that returns one randomitem in the array.
# Steps:
#   Initialize a new die with an array of labels
#     ERROR if die is initialized with an empty array
#     ERROR if die is initialized without an array
# 
#     sides counts the items in the array if they are strings
#       RETURN # of sides as integer
#     roll takes one random sample from array
#       RETURN sampled item as string
      


# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     @sides = @labels.count { |side| side.is_a? String }
    
#     raise ArgumentError.new("At least 1 Die label must be of class String") if labels.all? { |side| side == nil } || labels == []
#     raise ArgumentError.new("Labels list must be of class Array") if labels.class != Array
#   end

#   def sides
#     puts @sides.to_i
#   end

#   def roll
#     @labels.sample.to_s
#   end
# end




# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("Labels list must not be empty") if @labels == []
    raise ArgumentError.new("Labels list must be of class Array") if @labels.class != Array
  end

  def sides
    @sides = @labels.count
  end

  def roll
    rolled = @labels.sample.to_s
    rolled = "BLANK" if rolled == ""
    rolled
  end
end

# boggle_0 = Die.new(["R", "I", "F", "O", "B", "X", nil])
# puts boggle_0.class
# puts random = boggle_0.roll
# puts number = boggle_0.sides


# Reflection
# What were the main differences between this die class and the last one you
# created in terms of implementation? Did you need to change much logic to get
# this to work?
# I found myself spending a bit more time on this challenge than the previous
# die challenge because I wanted to allow it to accept many different classes of
# objects in the array that is input. Therefore I had to make it work for those
# classes, which added complexity to the class. My logic here is that any kind
# of object can be a side of the die as long as it is a member of the input
# array. This includes 'nil', which would be a blank side on the die, and is
# counted as a side.

# What does this exercise teach you about making code that is easily changeable
# or modifiable? 
# It gives me an idea of how using classes is useful in larger scale
# applications where we would want to create many objects that behaved the same
# way. Those objects, as part of a class, wouldn't need to be individually
# changed if something goes wrong with the code. Changes would just need to be
# made to the class, which would then apply to every object in the class. If
# there were hundreds or thousands of objects (or even tens), this would be very
# efficient.


# What new methods did you learn when working on this challenge, if any?
# What concepts about classes were you able to solidify in this challenge?
# I played around a lot with this class so I got some good practice and
# solidification on instance variables.