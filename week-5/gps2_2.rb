# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Create array of items in the string split by the space
# Create a hash of items in the array with key = item, value = 1
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: add the item to the hash, if no quantity is given set the default value to 1, otherwise set the value to the given quantity if the key does not exist, or add the quantity to the existing key value
# output: updated hash

# Method to remove an item from the list
# input: item name and optional quantity to be removed
# steps: if no quantity is given, remove item from list, otherwise set the value to current quanity - quantity given.
# output: updated hash

# Method to update the quantity of an item
# input: item name and quantity
# steps: set the value to whatever quantity is given for the item name
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through hash and puts string "(item):(number)"
# output: string of items and quanities on individual lines


def make_list(list, string_of_items)
  string_of_items.split(" ").each do |item|
    list[item].nil? ? list[item] = 1 : list[item] += 1
  end
  list
end

def add_item(list, item, quantity = 1)
  list[item].nil? ? list[item] = quantity : list[item] += quantity
  list
end
    
def remove_item(list, item, quantity=nil)
  if quantity == nil
    list.delete(item)
  elsif (list[item] - quantity) <= 0
    list.delete(item)  
  else 
    list[item] -= quantity
  end
  list
end

def update_list(list, item, quantity)
  quantity == 0 ? remove_item(list, item) : list[item] = quantity
  list
end

def print_list(list)
  puts "Grocery List"
  list.each {|item,value| puts "#{item}: #{value}" }
end

# -------------

# Test Methods:
# grocery_hash = {}
# grocery_hash = Hash.new
# string = "carrots apples cereal pizza"
# puts make_list(grocery_hash,string)
# puts add_item(grocery_hash, "tomato", 4)
# puts remove_item(grocery_hash, "tomato", 4)
# puts update_list(grocery_hash, "cereal", 0)


# print_list(grocery_hash)

# new_hash = {}

# add_item(new_hash, "Lemonade", 2)
# add_item(new_hash, "Tomatoes", 3)
# add_item(new_hash, "Onions", 1)
# puts add_item(new_hash, "Ice Cream", 4)

# puts remove_item(new_hash,"Lemonade")
# update_list(new_hash,"Ice Cream", 1)
# print_list(new_hash)

# -------------

# Reflection:

# What did you learn about pseudocode from working on this challenge?
# I learned that everyone has a different style of pseudocode. For this
# challenge we opted to make our pseudocode a bit closer to readable English. We
# more or less paraphrased our procedure for each method into what we wanted to
# do. We did use key words such as "if", "then", "otherwise", "iterate", etc. to
# make it easy for us to look back and identify what we needed to do when
# writing our methods.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# I think ultimately the end result called for using Hashes to store the item
# name and quantity as a pair. Thinking about it now, Arrays could have been set
# up in a way in which a string was split and read through to determine what was
# a number and what was an item name, but I think Hashes make that job much
# easier.

# What does a method return?
# In general a method will return an output. The output is determined by the
# code block in the method and the arguments provided.

# What kind of things can you pass into methods as arguments?
# Any object can be passed into methods as arguments. These can be strings, 
# umbers, arrays, hashes. We can also set a default value to an argument and
# make an argument an optional input.

# How can you pass information between methods?
# In our case, we defined our list hash outside of the method, and used the list
# as an argument for each of our methods. In other words, each method we made
# had list as an argument which told the method to retreive information from
# that list.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# This challenge made me look up and refresh my knowledge of Class structure,
# since we were instructed not to use it. That said I still need to brush up on
# my knowledge. I believe that using a class structure would have eliminated the
# need to use any list as an argument of our methods.