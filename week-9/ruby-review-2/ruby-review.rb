# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me 1 hour.


# Pseudocode
# input: integer
# output: string of spelled out integer.
# 
# Integer to string
# For 0 - 15
# 	print each number spelled out in a string
# 	assign each string to a variable (primary)
# For 16 - 19
# 	print six (primary variable) + "teen" - nine (primary variable) + "teen"
# For 20, 30, 40, 50, 60, 70, 80, 90, 100
# 	assign number variable to "number"
# For 21 - 29
# 	print twenty + primary variable
# And so on...


# Initial Solution

# def in_words(i)
# 	string_array = [zero = "zero", one = "one", two = "two", three = "three", four = "four", five = "five", six = "six", seven = "seven", eight = "eight", nine = "nine", ten = "ten", eleven = "eleven", twelve = "twelve", thirteen = "thirteen", fourteen = "fourteen", fifteen = "fifteen", teen = "teen", twenty = "twenty", thirty = "thirty", fourty = "fourty", fifty = "fifty", sixty = "sixty", seventy = "seventy", eighty = "eighty", ninety = "ninety", hundred = "hundred"]
	

# 	if i == 0
# 		puts zero
# 	end
# 	if i == 1
# 		puts one
# 	end
# 	if i == 2
# 		puts two
# 	end
# 	if i == 3
# 		puts three
# 	end
# 	if i == 4
# 		puts four
# 	end
# 	if i == 5
# 		puts five
# 	end
# 	if i == 6
# 		puts six
# 	end
# 	if i == 7
# 		puts seven
# 	end
# 	if i == 8
# 		puts eight
# 	end
# 	if i == 9
# 		puts nine
# 	end
# 	if i == 10
# 		puts ten
# 	end
# 	if i == 11
# 		puts eleven
# 	end
# 	if i == 12
# 		puts twelve
# 	end
# 	if i == 13
# 		puts thirteen
# 	end
# 	if i == 14
# 		puts fourteen
# 	end
# 	if i == 15
# 		puts fifteen
# 	end
# 	(16..19).each do |n|
# 		if i == n
# 			puts string_array[i-10] + string_array[16]
# 		end
# 	end
# 	if i == 20
# 		puts twenty
# 	end
# 	(21..29).each do |n|
# 		if i == n
# 			puts string_array[17] + string_array[i-20] 
# 		end
# 	end
# 	if i == 30
# 		puts thirty
# 	end
# 	(31..39).each do |n|
# 		if i == n
# 			puts string_array[18] + string_array[i-30] 
# 		end
# 	end
# 	if i == 40
# 		puts fourty
# 	end
# 	(41..49).each do |n|
# 		if i == n
# 			puts string_array[19] + string_array[i-40] 
# 		end
# 	end
# 	if i == 50
# 		puts fifty
# 	end
# 	(51..59).each do |n|
# 		if i == n
# 			puts string_array[20] + string_array[i-50] 
# 		end
# 	end
# 	if i == 60
# 		puts sixty
# 	end
# 	(61..69).each do |n|
# 		if i == n
# 			puts string_array[21] + string_array[i-60] 
# 		end
# 	end
# 	if i == 70
# 		puts seventy
# 	end
# 	(71..79).each do |n|
# 		if i == n
# 			puts string_array[22] + string_array[i-70] 
# 		end
# 	end
# 	if i == 80
# 		puts eighty
# 	end
# 	(81..89).each do |n|
# 		if i == n
# 			puts string_array[23] + string_array[i-80] 
# 		end
# 	end
# 	if i == 90
# 		puts ninety
# 	end
# 	(91..99).each do |n|
# 		if i == n
# 			puts string_array[24] + string_array[i-90] 
# 		end
# 	end
# 	if i == 100
# 		puts one + hundred
# 	end

# end


# Refactored Solution

def in_words(i)
	string_array = ["zero",
									"one",
									"two",
									"three",
									"four",
									"five",
									"six",
									"seven",
									"eight",
									"nine",
									"ten",
									"eleven",
									"twelve",
									"thirteen",
									"fourteen",
									"fifteen",
									"teen",
									"twenty",
									"thirty",
									"fourty",
									"fifty",
									"sixty",
									"seventy",
									"eighty",
									"ninety",
									"one hundred"]

	(0..15).each do |n|
		puts string_array[n] if i == n
	end

	tens = (20..100).step(10).to_a
	tens_index = (17..25).step.to_a
	tens.each do |n|
		if i == n
			puts string_array[tens_index[tens.index(n)]]
		end
	end

	(16..19).each do |n|
		if i == n
			puts "#{string_array[i-10]}teen"
		end
	end
	(21..29).each do |n|
		if i == n
			puts "twenty #{string_array[i-20]}"
		end
	end
	(31..39).each do |n|
		if i == n
			puts "thirty #{string_array[i-30]}"
		end
	end
	(41..49).each do |n|
		if i == n
			puts "fourty #{string_array[i-40]}"
		end
	end
	(51..59).each do |n|
		if i == n
			puts "fifty #{string_array[i-50]}"
		end
	end
	(61..69).each do |n|
		if i == n
			puts "sixty #{string_array[i-60]}"
		end
	end
	(71..79).each do |n|
		if i == n
			puts "seventy #{string_array[i-70]}"
		end
	end
	(81..89).each do |n|
		if i == n
			puts "eighty #{string_array[i-80]}"
		end
	end
	(91..99).each do |n|
		if i == n
			puts "ninety #{string_array[i-90]}"
		end
	end

end

# Driver Code
# (0..100).each do |n|
# 	in_words(n)
# end


# Reflection
# What concepts did you review in this challenge?
# I reviewed iteration, ranges, arrays, and different ways to loop through
# ranges. It was a pretty good exercise to get all of those things down.

# What is still confusing to you about Ruby?
# I find Ruby to be a very intuitive language...so far. As far as syntax goes,
# it is very readable on its own and the built in method names help with that.
# I am just eager to learn in depth about more concepts in Ruby and excited to
# get confused about them, so I could dive in and learn.

# What are you going to study to get more prepared for Phase 1?
# In addition to studying regular expressions I want to study more built in
# methods because my refactoring skills could be much improved. I think that
# getting to know more built in methods will help with that.