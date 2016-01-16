# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Initialize new object of class GuessingGame with a variable "answer" as
# an integer which is the correct answer to the guessing game.
# Output: Class GuessingGame object with methods GuessingGame#guess (takes
# integer and returns symbols based on integer) and GuessingGame#solved?
# (returns true or false if previous guess was correct)
# Steps:
# => Initialize new guessing game with the correct answer to be guessed.
# =>  IF answer is a negative number
# =>    ERROR
# =>  guess method:
# =>    IF guess is high
# =>      return :high symbol
# =>    IF guess is low
# =>      return :low symbol
# =>    IF guess is correct
# =>      return :correct symbol
# =>  solved? method:
# =>    IF guess is currently correct
# =>      return true
# =>    ELSE
# =>      return false





# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     raise ArgumentError.new("Argument should be Integer greater than 0") if @answer <= 0
#   end
  
#   def guess(guess)
#     @guess = guess
#     @high = :high
#     @low = :low
#     @correct = :correct
    
#     @guess == @answer ? @correct : @guess > @answer ? @high : @low
#   end
  
#   def solved?
#     @guess == @answer ? true : false
#   end
# end

# game = GuessingGame.new(3)

# puts game.guess(14)
# puts game.guess(2)
# puts game.guess(3)


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    raise ArgumentError.new("Argument should be Integer greater than 0") if @answer <= 0
  end
  
  def guess(guess)
    @guess = guess
    @guess == @answer ? :correct : @guess > @answer ? :high : :low
  end
  
  def solved?
    @guess == @answer ? true : false
  end
end

game = GuessingGame.new(3)

puts game.guess(14)
puts game.solved?
puts game.guess(2)
puts game.solved?
puts game.guess(3)
puts game.solved?

# Reflection
# How do instance variables and methods represent the characteristics and
# behaviors (actions) of a real-world object?

# If we were to take a real-world object, say, a pencil, we could say it has
# some attributes. A pencil has a point and an eraser and they start off sharp
# and full, respectively. If we had a ruby class called "Pencil" we might want
# to create an instance of the class. In the real world this would be one
# individual pencil. That instance of class Pencil will have its own individual
# "point" and "eraser" variables that are independent of other pencils. They can
# also have methods applied to them such as Pencil#sharpen, which again apply
# only to the individual pencil. So, instance variables and methods are like
# attributes that all objects in a class can have, but are not the same for all
# objects in a class.


# When should you use instance variables? What do they do for you?
# Instance variables should be used when creating a class. They give attributes
# to any object in a class, making it easy to give an object certain attributes
# without individually assigning them.

# Explain how to use flow control. Did you have any trouble using it in this
# challenge? If so, what did you struggle with?
# Flow control refers to passing items through a method and checking them to see
# if they satisfy a certain condition. Items that do satisfy a condition will
# have some code run on them, and items that do not satisfy that condition may
# be passed through again to check for a different condition and hae some other
# code run on them. Many times control flow can be processed via if/else
# statements in ruby.
# I have grown pretty comfortable using the ternary operator which checks for a
# condition and does one thing or another based on the truth of the initial
# statement. They can even be "nested" to include a ternary within a ternary.

# Why do you think this code requires you to return symbols? What are the
# benefits of using symbols?
# I think symbols help with the efficiency of programs because they are unique and cannot be changed. 