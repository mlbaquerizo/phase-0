# Full name greeting

puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Nice to meet you, #{first_name.capitalize} #{middle_name.capitalize} #{last_name.capitalize}!"

# Bigger, better favorite number

puts "Tell me your favorite number."
fave_num = gets.chomp
better_num = fave_num.to_i + 1

puts "That's a pretty OK number, I just think #{better_num} is kinda more cool."

=begin
How do you define a local variable?
A variable is a key that can be assigned to store a specific value (string, integer, float, etc.). A local variable is a variable that is defined within the scope of a method. If called outside of the method that houses them, ruby will put out an error.

How do you define a method?
A method is a function in ruby that returns an output based on what is input.

What is the difference between a local variable and a method?
A local variable stores a specific value. A method stores a function that returns a value based local variables that are input.

How do you run a ruby program from the command line?
ruby [name of ruby file]

How do you run an RSpec file from the command line?
rspec [name of rspec file]

What was confusing about this material? What made sense?
I had trouble with the address method. I originally used 'puts' instead of 'return' in the method and I had to look up why that didn't work. I also made the assumption that the variables that were to be input into the address method were not going to be strings, which made my approach more complex than it needed to be.
The math methods made more sense to me, I guess because thinking about number logic comes a bit more easy to me.

Address solution file: https://github.com/mlbaquerizo/phase-0/blob/master/week-4/address/my_solution.rb

Math solution file: https://github.com/mlbaquerizo/phase-0/blob/master/week-4/math/my_solution.rb

=end