[defining-variables](https://github.com/mlbaquerizo/phase-0/blob/master/week-4/defining-variables.rb)
[simple-string](https://github.com/mlbaquerizo/phase-0/blob/master/week-4/simple-string.rb)
[basic-math](https://github.com/mlbaquerizo/phase-0/blob/master/week-4/basic-math.rb)



##What does ```puts``` do?
```puts``` prints a string without returning values.

##What is an integer? What is a float?
An integer is a negative or positive number without a decimal. Floats have decimals.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division will return the expected mathematical result. Because floats can have parts of numbers (decimals), a problem like 9.0/2.0 will yield 4.5. With integer division, the problem will yield 4, because integers can't have decimals.

```
hours = 24

days = 365

hours_per_year = hours * days

puts "There are #{hours_per_year} hours in a year!"
```

```
minutes = 60 * 24 * 365

decade = 10

minutes_in_decade = minutes * decade

puts "There are #{minutes_in_decade} minutes in a decade!"
```

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?
These mathematical operators act as methods in Ruby. Not only can they be used to operate on numbers (integers or floats), but they can be used to operate on variables of the same kind (i.e strings can be added/multiplied to strings).


##What is the difference between integers and floats?
Integers in ruby are just like integers in math; they're numbers without any fraction parts. Floats have fractions or decimals. We can make Ruby integers into floats by adding a .0 to the end (i.e. 1.0 is a float)

##What is the difference between integer and float division?
Float division will return the expected mathematical result. Because floats can have parts of numbers (decimals), a problem like 9.0/2.0 will yield 4.5. With integer division, the problem will yield 4, because Ruby integers can't have decimals.


##What are strings? Why and when would you use them?
Strings are groups of letters/numbers/symbols wrapped in quotes. Strings can also be empty (""). Strings are used in programs, usually for the purpose of communicating with the user to gather input.


##What are local variables? Why and when would you use them?
Local variables are used for creating methods. They are the variables that are used to define methods; they are the variables that the method will expect as input.


##How was this challenge? Did you get a good review of some of the basics?
I definitely got a good review of some of the basics and a refresher on some basic methods. I found this challenge easy because the logic behind the challenges was simple and there wasn't too much technical coding to do (just assigning variables).