# Your Names
# 1)Matt B.
# 2)Linda H.

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} # Value is serving size of key

raise ArgumentError.new("We don't have that item in stock. Thanks for the suggestion!") if library.has_key?(item_to_make) == false

 serving_size = library[item_to_make] 
 remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Why don't you make #{remaining_ingredients} of cookie also?"
  end
end

p serving_size_calc("pie", 14)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
# I learned how important making code readable is. Before we refactored, it was almost completely unreadable and I did not even know what the method was trying to accomplish.

# Did you learn any new methods? What did you learn about them?
# I learned about the has_key?/has_value? methods which made refactoring the Argument error easy and much more readable.

# What did you learn about accessing data in hashes?
# There are many ways of accessing data in hashes but the simplest way would be
# hash[key]


# What concepts were solidified when working through this challenge?
# I got a look at why refactoring and readability are so important. This
# challenge also forced me to review/reread code. Previously I did not allocate
# that much time to reviewing code. I also learned to break down parts of code
# and try to figure out exactly what it was doing. This allows for easier
# refactoring because you can look up methods based on what the goal is, not
# based on the existing code.