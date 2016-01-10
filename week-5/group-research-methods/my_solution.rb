# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)

end

def my_hash_finding_method(source, thing_to_find)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2 - Matthew Baquerizo


# Create a my_array_modification_method! that takes an array and number to be added to all internal numbers. (Because you can never have too many pets!) It should permanently alter the original array and hash.

def my_array_modification_method!(array, number)
  array.map! do |i|
    i += number if i.is_a? Integer
    i
  end
end

# Two years have passed since I made my_family_pets_ages, so the ages need to be updated. I want the original data to change since I can't travel back in time.

def my_hash_modification_method!(hash, years)
  hash.each {|pet, age| hash[pet] = age + years}
end

# Identify and describe the Ruby method(s) you implemented.
# my_array_modification_method! takes an array and a number as arguments and
# adds the number to any integers in the array.
# At first when creating this method, I tried to make a new array and iterate
# over the original array using .each. If an item in the original array was an
# integer, I added the argument number to that integer, and pushed it to the new
# array. Otherwise I just pushed the item to the new array. After this I set the
# original array equal to the new array and returned the original array. This
# failed the rspec test for destructiveness because the object id for the
# original array was not equal to the returned array (I still am not 100% sure
# why).
# So I headed over to the Ruby docs and found the #map! method, which takes an
# item in the array and changes it based on the code block after it. So I
# "mapped" any integers in the array to the integer plus the argument number,
# and returned the item itself if it was not an integer. This thankfully passed
# the rspec tests.

# my_hash_modification_method! is a bit more straightforward. It takes a hash
# and a number (of years) as arguments and adds the number of years to the value
# of each key in the hash. The hash values should be integers for this to work.
# I supposed we can make this work in cases where the hash value is not an
# integer, by leaving the value untouched if it is not an integer.

# As for deciphering the Ruby docs, One useful technique for me is using the
# browser's "Find" function (ctrl/command + F) and searching for key words which
# might lead my to a useful method. One trick to this is typing out verbs with
# tense truncated from them. For example, instead of "modify" or "modified", I
# would just type "modif". This yields more search results related to that verb,
# which can increase the chance to find a useful method. I also read the methods
# very slowly and break each argument down to understand what that method does. 


# Person 3
def my_array_sorting_method(source)

end

def my_hash_sorting_method(source)

end

# Identify and describe the Ruby method(s) you implemented.
# 
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)

end

def my_hash_deletion_method!(source, thing_to_delete)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)

end

def my_hash_splitting_method(source, age)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#