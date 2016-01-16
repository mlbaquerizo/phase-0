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

class GuessingGame
  def initialize(answer)
    @answer = answer
    raise ArgumentError.new("Argument should be Integer greater than 0") if @answer <= 0
  end
  
  def guess(guess)
    @guess = guess
    @high = :high
    @low = :low
    @correct = :correct
    
    @guess == @answer ? @correct : @guess > @answer ? @high : @low
  end
  
  def solved?
    @guess == @answer ? true : false
  end
end

game = GuessingGame.new(3)

puts game.guess(14)
puts game.guess(2)
puts game.guess(3)


# Refactored Solution






# Reflection