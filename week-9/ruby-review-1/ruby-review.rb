# Create a Car Class from User Stories

# I worked on this challenge Joe Case 

# As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.

# As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.

# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.

# As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.

# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.

# As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.

# As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.

# As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.



# 2. Pseudocode

# Create a class of car with initialize function that takes model and color parameters
# Add attr attibutes to instance variables
# Add current position variable/method
# Add method to drive car a distance
# Add current speed variable/method
# Add method to turn left or right
# Add method change speed with parameter
# Add method/variable of total distance traveled
# Add method to stop car
# Add method/variable to see last action of car

 
# 3. Initial Solution

# class Car
  
#   attr_accessor :model
#   attr_accessor :color
#   attr_reader :total_distance
#   attr_reader :speed
#   attr_reader :route
  
#   # p @route
  
#   def initialize(model, color)
#     @model = model
#     @color = color
#     @total_distance = 0.0
#     @route = Array.new()
#     @current_distance = 0
#     @total_distance = 0
#     @speed = 0
#     @turn = nil
#     @pizzas = Array.new()
#   end
  
#   def drive(distance)
#     @current_distance = distance
#     @total_distance += @current_distance
#     @route.push(@current_distance)
    
#   end
  
#   def change_speed(speed)
#     @speed = speed
#     @route.push(speed)
    
#   end
  
#   def turn(direction)
#     @turn = direction
#     @route.push(@turn)
#   end
  
#   def stop
#     @speed = 0
#     @route.push(@speed)
#   end
  
#   def add_pizza(pizza)
#     @pizzas.push(pizza)
#   end
  
#   def get_pizza
#     @pizzas.shift
#   end
  
#   def play_by_play
#   	p @pizzas
#   end

# end
  
class Pizza
  
  def initialize(type, size)
    @type = type
    @size = size
    @slices = 10 if @size == "L"
    @slices = 8 if @size == "M"
    @slices = 6 if @size == "S"    
  end
  
  def eat_slices(num)
    p "Ain't no more pizza!" if @slices == 0
    p "Not enough slices" if num > @slices
    @slices -= num
  end
  
end
  
  



# 4. Refactored Solution

class Car
  
  attr_accessor :model
  attr_accessor :color
  attr_reader :total_distance
  attr_reader :speed
  attr_reader :route
  attr_reader :pizzas
  
  def initialize(model, color)
    @model = model
    @color = color
    @total_distance = 0.0
    @route = Array.new()
    @current_distance = 0
    @total_distance = 0
    @speed = 0
    @turn = nil
    @pizzas = Array.new()
  end
  
  def drive(distance)
    @current_distance = distance
    @total_distance += @current_distance
    @route.push(@current_distance)  
  end
  
  def change_speed(speed)
    @speed = speed
    @route.push(speed)
  end
  
  def turn(direction)
    @turn = direction
    @route.push(@turn)
  end
  
  def stop
    @speed = 0
    @route.push(@speed)
  end
  
  def add_pizza(pizza)
    @pizzas.push(pizza)
  end
  
  def get_pizza
    @pizzas.shift
  end

end

# 1. DRIVER TESTS GO BELOW THIS LINE

hotrod = Car.new("mustang", "yellow")

hotrod.change_speed(25)
p hotrod.speed
hotrod.drive(0.25)
hotrod.stop
hotrod.turn("right")
hotrod.change_speed(35)
hotrod.drive(1.5)
p hotrod.speed
hotrod.change_speed(15)
hotrod.drive(0.25)
hotrod.stop
hotrod.turn("left")
hotrod.change_speed(35)
hotrod.drive(1.4)
hotrod.stop
p hotrod.total_distance
p hotrod.route

hotrod.add_pizza("cheese")
hotrod.add_pizza("pepperoni")
hotrod.add_pizza("vege")
hotrod.add_pizza("sausage")
p hotrod.pizzas
hotrod.get_pizza
p hotrod.pizzas


# 5. Reflection

# What concepts did you review in this challenge?
# We reviewed creating classes with local variables and attribute accessor
# methods. I enjoyed this challenge, especially running driver code, which
# helped me visualize an actual car being driven around. This challenge also
# made me appreciate Ruby more because class structures make creating program
# specific objects easy and very intuitive.

# What is still confusing to you about Ruby?
# I am not too sure what confuses me about Ruby. I know that I have only
# barely scratched the surface in terms of concepts, objects, and methods,
# so I am not necessarily confused as I am ignorant of new concepts.


# What are you going to study to get more prepared for Phase 1?
# I want to study regular expressions more to get prepared for Phase 1. I
# believe regular expressions can be extremely useful for matching user input
# in order to set certain conditions in code.