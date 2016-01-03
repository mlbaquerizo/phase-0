# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  
  concat_array = []
  
  array_1.each do |obj|
    concat_array.push(obj)
  end
  
  array_2.each do |obj|
    concat_array.push(obj)
  end
  
  return concat_array
end
