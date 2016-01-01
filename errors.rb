# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => The error is occuring at line 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => The interpreter expected keyword_end but was given end-of-input
# 5. Where is the error in the code?
# => The error occurs at the very end of the file after the last character
# 6. Why did the interpreter give you this error?
# => The while method requires an end and the interpreter searched until the very end of the file for it.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 36
# 2. What is the type of error message?
# => in `<main>': or NameError
# 3. What additional information does the interpreter provide about this type of error?
# => There was a undefined local variable or method called 'south_park'
# 4. Where is the error in the code?
# => The error is in the whole of line 36
# 5. Why did the interpreter give you this error?
# => 'south_park' is being called without any prior definition as to what 'south_park' is, so the interpreter does not know what to do with it.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 51
# 2. What is the type of error message?
# => in `<main>' or NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => There was an undefined method called 'cartman'
# 4. Where is the error in the code?
# => The error occurs in the whole of line 51.
# 5. Why did the interpreter give you this error?
# => A method called cartman was called but was never defined.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 66
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguements; 1 argument was called on the method on line 70, 0 arguments expected on line 66.
# 4. Where is the error in the code?
# => The error occured where the method was called with an arguement on line 70 
# 5. Why did the interpreter give you this error?
# => This was pretty self-explanatory. The 'cartmans_phrase' method was defined to expect no arguments but was given 1 on line 70.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 85
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments; the method was defined to expect 1 argument but was given 0 on line 89
# 4. Where is the error in the code?
# => the error occured where the method is called without an arguement on line 89
# 5. Why did the interpreter give you this error?
# => The method was called without an argument on line 89 and the interpreter was expecting an argument (variable).



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 106
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments; expected 2, given 1.
# 4. Where is the error in the code?
# => The error occured where the method was called with one argument on line 110.
# 5. Why did the interpreter give you this error?
# => The method was called with one argument on lin 110 and the interpreter was expecting 2.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 125
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum.
# 4. Where is the error in the code?
# => The error is in line 125 after the * method
# 5. Why did the interpreter give you this error?
# => The method * expects a Fixnum (integer or float) instead of a string. In English "Five "respect my authoritay!" times does not make sense. If the arguments were switch there would not be an error since the string would be the variable that will be added 5 times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 140
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0 -- this is not mathematically valid
# 4. Where is the error in the code?
# => the error occurs after the division (/) sign.
# 5. Why did the interpreter give you this error?
# => The error occured because a number cannot be divided by 0.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 156
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => Cannot load such file
# 4. Where is the error in the code?
# => The error is the file being called
# 5. Why did the interpreter give you this error?
# => There is no such file in the phase-0 directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?
For the most part I was able to put two and two together for all of the error messages. The first one was the most difficult since I hadn't really looked into and broken down error messages before that.

How did you figure out what the issue with the error was?
I looked at the key words in the error and looked back at the code to see what looked wrong.

Were you able to determine why each error message happened based on the code? 
Yes, the error message pointed to the code and through looking at the code I was able to determine the problem.

When you encounter errors in your future code, what process will you follow to help you debug?
Since the code stops at each consecutive error it's pretty easy to take each error one at a time, which seems like a good way to go about debugging. And each error message should be broken down and each piece examined rather than ignoring the error and trying to resolve it just by looking at the code.

=end