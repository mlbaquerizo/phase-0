# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 3 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create array of the letters of B, I, N, G, O.
  # Take a random sample from the array and set it to a letter variable
  # Take a random sample of a number from 1-100 and set it to a number variable.
  # RETURN letter and number

# Check the called column for the number called.
  # Letter is B => Check to see if the number exists in the 0th index of each
  # subarray (0, 1, 2, 3, 4).
  # Letter is I => Check to see if the number exists in the 1st index of each
  # subarray (0, 1, 2, 3, 4).
  # Letter is N => Check to see if the number exists in the 2nd index of each
  # subarray (0, 1, 2, 3, 4).
  # Letter is G => Check to see if the number exists in the 3rd index of each
  # subarray (0, 1, 2, 3, 4).
  # Letter is O => Check to see if the number exists in the 4th index of each
  # subarray (0, 1, 2, 3, 4).
  
# If the number is in the column, replace with an 'x'
  # IF number and column match, reassign value to 'X'

# Display a column to the console
  # Column B => Call 0th index of each subarray and display them each on a
  # separate line.
  # Column I => Call 1st index of each subarray and display them each on a
  # separate line.
  # Column N => Call 2nd index of each subarray and display them each on a
  # separate line.
  # Column G => Call 3rd index of each subarray and display them each on a
  # separate line.
  # Column O => Call 4th index of each subarray and display them each on a
  # separate line.
  

# Display the board to the console (prettily)
  # Start with a blank line
  # Next line, display first row (first subarray - 0th index of outer array)
  # Next line, display second row (second subarray - 1st index of outer array)
  # ...
  # Last line, display fifth row (fifth subarray - 4th index of outer array)

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end
  
#   def call
#     letters = ["B", "I", "N", "G", "O"]
#     @letter = letters.sample
#     @number = rand(1..100)
#     @call = "#{@letter}-#{@number}"
#     puts @call
#   end

#   def check
#     @bingo_board.each do |row|
#       case @letter
#       when "B"
#         row[0] = "X" if row[0] == @number
#       when "I"
#         row[1] = "X" if row[1] == @number
#       when "N"
#         row[2] = "X" if row[2] == @number
#       when "G"
#         row[3] = "X" if row[3] == @number
#       when "O"
#         row[4] = "X" if row[4] == @number
#       end
#     end

#     puts
#     p @bingo_board[0]
#     p @bingo_board[1]
#     p @bingo_board[2]
#     p @bingo_board[3]
#     p @bingo_board[4]
#   end
  
#   def column(letter)
#     case letter
#     when "B"
#       @bingo_board.each do |row|
#         puts row[0]
#       end
#     when "I"
#       @bingo_board.each do |row|
#         puts row[1]
#       end
#     when "N"
#       @bingo_board.each do |row|
#         puts row[2]
#       end
#     when "G"
#       @bingo_board.each do |row|
#         puts row[3]
#       end
#     when "O"
#       @bingo_board.each do |row|
#         puts row[4]
#       end
#     end
#   end
# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    letters = ["B", "I", "N", "G", "O"]
    @letter = letters.sample
    @number = rand(1..100)
    @call = "#{@letter}-#{@number}"
    puts @call
  end

  def check
    @bingo_board.each do |row|
      case @letter
      when "B"
        row.fill("X", 0, 1) if row[0] == @number
      when "I"
        row.fill("X", 1, 1) if row[1] == @number
      when "N"
        row.fill("X", 2, 1) if row[2] == @number
      when "G"
        row.fill("X", 3, 1) if row[3] == @number
      when "O"
        row.fill("X", 4, 1) if row[4] == @number
      end
    end
    puts
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
    
    @bingo_board
  end
  
  def column(letter)
    case letter
    when "B"
      @bingo_board.each {|row| puts row[0]}
    when "I"
      @bingo_board.each {|row| puts row[1]}
    when "N"
      @bingo_board.each {|row| puts row[2]}
    when "G"
      @bingo_board.each {|row| puts row[3]}
    when "O"
      @bingo_board.each {|row| puts row[4]}
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
puts
new_game.call
new_game.check
puts
new_game.column("I")

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your
# pseudocoding style?
# Pseudocoding this challenge was relatively easy. It was made easier by
# breaking it down into different parts.

# What are the benefits of using a class for this challenge?
# The benefits of using a class would be to have multiple "players" with different boards who could each check their own board

# How can you access coordinates in a nested array?
# I accessede coordinates by using .each. For each row I would check the 0, 1,
# 2, 3, or 4 index for a number depending on the letter.

# What methods did you use to access and modify the array?
# I used reassignment using = to modify the array.


# Give an example of a new method you learned while reviewing the Ruby docs.
# Based on what you see in the docs, what purpose does it serve, and how is it
# called?
# I learned about the Array#fill method, which was more confusing than just
# reassigning values using =. I don't think the documentation for this method is
# that easy to understand, so it took some playing around with in IRB. It filled
# a desired index of an array with something else, in this case "X". 


# How did you determine what should be an instance variable versus a local variable?
# I used instance variables for variables that would be used throughout the
# class and local variables for variables that would only be used in single
# methods in the class.


# What do you feel is most improved in your refactored solution?
# I unfortunately don't think much improved. I think my problem is that I get
# stuck on my solution and happy with it, especially after hours of working on
# it, that I don't really have the energy to look up new methods. I will come
# back to this another day hopefully.