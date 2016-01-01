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