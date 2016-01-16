# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [ [1,2], ["inner", ["eagle", "par", ["FORE", "hook"] ] ] ]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"} } } }

# attempts:
# ============================================================
# p hash[:outer][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"} ] }

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! do |item|
#   if item.is_a? Array
#     item.map! {|x| x + 5}
#   else
#     item + 5
#   end
# end

# p number_array

number_array.map! do |item|  
  (item.is_a? Array) ? item.map! {|x| x + 5} : item + 5
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def name_generator(array)
  array.map do |word|
    (word.is_a? String) ? word + "ly" : name_generator(word)
  end
end

p name_generator(startup_names)
p startup_names
    

# What are some general rules you can apply to nested arrays?
# Objects in nested arrays are accessed by accessing the outermost array first,
# and calling the index at which the object is contained in. Work your way in
# from there to the desired object.

# What are some ways you can iterate over nested arrays?
# Nested arrays can be iterated over just as normal one-dimensional arrays can
# be. So any iterative methods that can be used on arrays can also be used on
# nested arrays. Some methods, such as puts, will iterate over every nested
# array.

# Did you find any good new methods to implement or did you re-use one you were
# already familiar with? What was it and why did you decide that was a good
# option?
# We played around with some new (to us) methods such as String#concat and
# Array#concat, and Array#flatten. We decided to re-use familiar methods in the
# end for clarity/readability.
