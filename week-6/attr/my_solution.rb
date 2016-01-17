#Attr Methods

# I worked on this challenge by myself

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  
  def initialize
    @name = "Matthew"
  end
end

matt = NameData.new()
puts matt.name

class Greetings
  def initialize
    @name_data = NameData.new
  end
  
  def hello
    puts "Hello #{@name_data.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


# Reflection

# Release 1 --
# What are these methods doing?
# Some of these methods print out profile information and some of them can
# change the information.

# How are they modifying or returning the value of instance variables?
# Instance values are either being returned in the methods or in the case of
# modification, they are reset using = format.

# Release 2 --
# What changed between the last release and this release?
# An attribute reader for age is now included and the what_is_age method was
# removed.

# What was replaced?
# The what_is_age method

# Is this code simpler than the last?
# It is a bit simpler but I think an attribute reader should be added for more
# attributes such as name and occupation.

# Release 3 --
# What changed between the last release and this release?
# An attribute writer for age is now included which replaced the change_my_age
# method.

# What was replaced?
# The change_my_age method

# Is this code simpler than the last?
# The code for reading and writing age is now more uniform and it is easier to print or change age by using #.age or #.age =

# Release 6 --
# What is a reader method?
# A reader method can return an initialized attribute of an object in a class.

# What is a writer method?
# A writer method can reassign an initialized attribute of an object in a class.

# What do the attr methods do for you?
# The attr methods easily access attributes of an object in a class. Without
# these methods we would need to define other methods to be able to retreive
# information about the object.

# Should you always use an accessor to cover your bases? Why or why not?
# No. Using attr_accessor is useful in some cases but in cases where there is a
# lot of data, it could cause security holes and bugs in your program if
# attributes are not what methods expect them to be.

# What is confusing to you about these methods?
# The most confusing part about this challenge specifically was sending data
# between classes. I was not too sure how to use attr_ methods with this
# challenge.
