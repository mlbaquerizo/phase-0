# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1 - Jonathan Silvestri
=begin
Initial
def my_array_finding_method(source, thing_to_find)
  source.select{|x|  x.respond_to?('include?') && x.include?(thing_to_find) }
end
=end

#Refactor
def my_array_finding_method(source, thing_to_find)
  source.select{|element| element.respond_to?('include?') && element.include?(thing_to_find) }
end

#I did not feel the need to refactor here.
def my_hash_finding_method(source, thing_to_find)
  source.select{|key, value| value == thing_to_find}.keys
end

=begin
Release 1: Identify and describe the Ruby method you implemented. Teach your accountability group how to use the methods.
-Utilize the .select method to iterate through the hash.
-.select takes a code block. For this exercise, I passed in the key and value variables.
-Inside the code block, I searched for the key/value pairs whose values matched the argument passed into the variable thing_to_find.
-As I only want the keys in the key/value pair, adding .keys to the end of the block will ensure only the keys are returned.
I used a number of similar methods on the array portion, but some changes and edge-cases needed to be accounted for. What follows is logic that Andrew Larson helped me to develop:
Initial Solution (contains plain-text): source.select {|x| x if x contains the thing I am trying to find.}
-Eliminate "x if". The code block will already be returning x.
-Research a method that can help me to locate the text I desire. Discover .include?
-.include? accepts an argument, which I set to be equal to the argument I pass into the thing_to_find variable.
Next Solution: source.select{|x| x.include?(thing_to_find)}
-The problem here is that .include? can only interact wiht strings. If it tries to interact with integers, an error is returned.
-I had to add another method to the code block. I needed a method that could check to see if the elements could interact with .include?
-I located .respond_to?, which accepts an argument that can be a method, written as follows: 'include?' or :include?
Next Solution: source.select{|x| x.respond_to?('include?') && x.include?(thing_to_find) }
-Now, if the elements (x) failed the respond_to? part of my block, it would continue to iterate rather than stop and throw an Error.
-My final, refactored solution, found above, edited 'x' to be more intuitive and easy to understand. Thus, 'element'.
Release 3: Reflect!
What did you learn about researching and explaining your research to others?
I'll list these bad boys out in a list:
-Knowing your synonyms in the english language are so powerful. 
There was no method that existed for ".contain?". but knowing that "include" is a synonym of "contain" led me to ".include?"
-Use a combination of plain english and code to explain what you are doing. 
Lean heavier on the plain english, but when appropriate, use code talk.
-Don't be afraid to spend more time researching that actual code writing. 
The information you find will often present you with skeleton versions of the code you need to write, it's just up to you to fill in the blanks.
=end

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


# Person 3 - Charlie Bliss
# array= [3,4,5,9]
def my_array_sorting_method(source)
  source.sort { |a, b| a.to_s <=> b.to_s }
end
# puts array
# puts "stop"
# puts my_array_sorting_method(array)
def my_hash_sorting_method(source)
  source.sort_by{ |k, v| v}
end

=begin
Identify and describe the Ruby methods you implemented
  The important methods I used were sort and sort_by. Sort simply takes all of the elements in an array and sorts them alphabetically or numberically, or, in this case, both. I also used the to_s method here in order to get numbers and strings sorted together. Orignally I had the to_s method running outside of my sort, but I was returning the integers as strings, so when I put it inside, it returned everything the way it was supposed to, only sorting them all as strings. The sort_by method sorts by assigning values to a list and then sorting them by that value. In this case, we were using a hash, so the values were already there. I iterate through the keys and values and sort it by the values, which returns a numerically sorted list of those values.
Teach your accountability group how to use the methods
  Sort is pretty simple, when you call the method sort, you pass it information about how you want the input sorted. In this case, it compares the values using the spaceship operator to see which is higher. In the case of strings, that simply means alphabetically, going 0-Z. This puts the values in proper alphabetical order using the same data type they started with. For the hash sort, sort_by is very similar, but since we're operating with pairs of data types and don't want to sort by the key, we have to tell it for each k(ey) and v(alue), SORT the hash BY the value. One thing you can see that I did was use sort and sort_by, rather than sort! and sort_by! This is because the ! method is destructive, so it would replace the original list with the sorted list, rather than refer to a copy of the list like I'm doing now.
Share any tricks you used to find and decipher the Ruby Docs
  I pretty much knew what I wanted to use, since I've used these methods for a few challenges already this week. When I went through today, I found that the docs really aren't that clear, especially for sort_by, so seeing a few examples of people using it on StackOverflow definitely helped me get a sense of proper usage. People will often go way out of their way to help explain a concept, so never underestimate the amount of people that have been through whatever problem you're facing and asked about it online.
=end
# Person 4 - Christopher Bunkers
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |a, b| a.upcase.include?(thing_to_delete.upcase) }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |k, v| k.upcase.include?(thing_to_delete.upcase) }
end

=begin
-Identify and describe the Ruby method(s) you implemented-
1.The main method I used to complete this challenge was the .delete_if method.  Even though there's no (!) pegged to the end, this one of the bang!/destructive/dangerous methods we've been hearing so much about; meaning, it modifies the object it's called upon.  In this case, it's called upon the source argument, which, for our purposes, can represent the i_want_pets array or the my_family_pets hash.  The delete_if method changes the objects within the array by removing them if they contain the thing_to_delete argument.  We can set this to an individual letter, a string, integer or whatever else we want to find and remove.  Similarly, you could use the .reject!, which, while more obviously named with the (!) pegged to the end, will return nil if it cannot find the thing_to_delete within the array or hash.  .delete-if will just return the array or hash unchanged if there is nothing for it to remove.
2. The second most important method I used would probably have to be .include? to find whether the object contained (included) the thing_to_delete.
3. The last method I used was the .upcase on both the individual objects within the array/hash and the thing_to_delete argument.  Going through and testing the method, I found that certain objects wouldn't get deleted if they started with a capital version of thing_to_delete.  For example, "Hoobie" and "Annabelle" would be deleted with the paramter "b", but not Bogart.  With .upcase added, all three are deleted.  If the user only wanted to delete Bogart, they could just input anything from "bo" to "Bogart" and "Bogart" would be removed.
-Teach your accountability group how to use the methods-
I'll stick to the .delete_if method for this part since you're probably all pretty familiar with the .upcase and .include? methods.  .delete_if is pretty straightforward and operates like and uses similar syntax as many other methods.  One important thing to keep in mind is that, even though it has no (!), it IS a destructive method.  So don't use it if you don't want to modify the object you attach it to.  If you want something that acts like .delete_if but is not destructive, try using .reject instead.  .delete_if iterates through your array/method and deltes each object for which the block evaluates as true.  In this case, the block checks whether each upcase object, n, includes the upcased thing_to_delete argument.  If the block does contain the thing_to_delete argument, .delete_if destructively removes the object from the source and returns the new, updated source.
-Share any tricks you used to find and decipher the Ruby Docs-
Once I figured out with pseudocode what I wanted my code to do, it wasn't too difficult to find these methods.  They have pretty semantic names/meanings (include,delete_if,reject), so I pretty much scanned through the methods in the ruby-docs hash and array pages and found these.  At first, I went with the .reject! method because it seemed more obviously destructive.  But, I saw the .reject entry linked to the .delete_if entry and vice versa.  After a more careful reading and some googling for examples I better understood the difference between the two and decided to go with .delete_if.
=end


# Person 5
# def my_array_splitting_method(source)

# end

# def my_hash_splitting_method(source, age)

# end

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
# I learned some new methods from my groupmates which are very useful. Namely
# the include? method and delete_if. I also saw some neat refactoring techniques
# as well as some tips to searching the Ruby docs.