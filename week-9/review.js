// Factorial Method

// RUBY STEPS:
// satisfy condition where 0! = 1
// satisfy condition where number > 0
// make an array to store all numbers from 1 --> number
// make a new array to store products
// initialize product at 1
// for each number in array, store the product as (product * number)
// and push the new product to new_array
// return the integer stored in the last index of new_array

// RUBY:
// def factorial(number)
//   if number == 0
//     1
//   else
//     array = []
//     start = 0
//     while start < number do
//       start += 1
//       array.push(start)
//     end
  
//     new_array = []    
//     product = 1
    
//     array.each do |num|
//       product *= num
//       new_array.push(product)
//     end
    
//     new_array[-1]
//   end
// end


// Pseudocode:

// input: number
// output: number!

// IF number is 0
//   RETURN 1
// ELSE
//   initialize product at 1
//   FOR each integer i from 1 to number
//     multiply product by i and store new product as product
//   RETURN product

// Initial Solution:

// function factorial(num){
//   var product = 1
//   if(num === 0){
//     return product;
//   }
//   else{
//     for(i = 1; i <= num; i++){
//       product *= i;
//     }
//     return product;
//   }
// };

// Refactored:

function factorial(num){
  if(num === 0){
    return 1;
  }
  return num * factorial(num-1)
};

console.log(factorial(5));

// What concepts did you solidify in working on this challenge?
// I solidified recursion as well as some basic Javascript syntax.

// What was the most difficult part of this challenge?
// The most difficult part of this challenge was thinking about it in a new way
// from when I originally did it in Ruby. Before I started, I tried to think of
// how to solve this problem using the same steps and I realized that the first
// time around, I overcomplicated the problem and added a lot more steps than
// necessary. Once I gave up on the original logic, the problem became easier.

// Did you solve the problem in a new way this time?
// Yes. Originally I used arrays to store products and returned the final
// product in the array. This time I just set a product to 1 and iterated
// through a range, each time multiplying the product by the next number in the
// range, and storing the new product as the product. Eventually I found that
// this could also be done with recursion, which I did not even consider during
// the original Ruby challenge. I also found that this challenge took quite a
// long time the first time around, which is why I chose to review it this week.
// This time it took me a fraction of the time, which is reassuring to me that
// my problem-solving process and overall knowledge is improving.

// Was your pseudocode different from the Ruby version? What was the same and
// what was different?
// I don't think I really had pseudocode in the Ruby version, but if I did it
// would have been a lot different. I did not use arrays in this version. The
// only similarity was having an initial product that was set to 1.