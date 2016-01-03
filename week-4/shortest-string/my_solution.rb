# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  to_int = []
  
  list_of_words.each do |word|
    to_int.push(word.length)
  end
  
  to_int.sort!
  
  ordered = []
  
  to_int.each do |num|
    list_of_words.each do |word|
      if word.length == num
        ordered.push(word)
      end
    end
  end
  
  return ordered[0]
end
