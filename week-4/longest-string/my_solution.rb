# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  to_int = []
  
  list_of_words.each do |word|
    to_int.push(word.length)
  end
  
  to_int.sort! {|x,y| y <=> x}
  
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
