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