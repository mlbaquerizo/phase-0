// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Tim Beck.

// Pseudocode
// Input: Positive Integer

// Output?
// The number that is input, as a string, with commas every thousand place if applicable
// Steps:
//   IF the string version of the integer is 3 characters or less
//     RETURN string
//   IF the string version of the integer is more than 3 characters
//     Starting from the last character to first
//     Place comma after every third character
//   IF the length of the string integer is a multiple of 3 AND the length is greater than 3
//     Do not place comma after last (from back to front) character


// Initial Solution

// function separateComma(number) {
//   // create a variable called number array, which splits the number string into the array
//   var numberArray = number.toString().split('');
//   // index is the length of the number string
//   var index = number.toString().length;
//   // console.log(index);
  
//   // length of index - 3
//   var numIndex = index - 3
//   // numIndex -= 3;
  
//   // insert comma in the array, without removing any objects, at index numIndex, which subtracts by 3 to cover each thousand place, until numIndex <= 0 
//   while (numIndex > 0) {
//   numberArray.splice(numIndex, 0, ",");
//     numIndex -= 3;
//   }
  
//   //turn array into a string which joins each object and print the string
//   numberArray = numberArray.join('');
//   console.log(numberArray);

// }


// Refactored Solution

function separateComma(number) {
  
  var numberArray = number.toString().split('');
  var index = number.toString().length;
  for(var i = index - 3; i > 0; i -= 3){
  	numberArray.splice(i, 0, ",");
  }
  numberArray = numberArray.join('');
  console.log(numberArray);

}

// Your Own Tests (OPTIONAL)

separateComma(32432124)
separateComma(32)

// Reflection
// What was it like to approach the problem from the perspective of 
// JavaScript? Did you approach the problem differently?
// At first we tried approaching this problem as we were coding Ruby. We got
// the logic down but our execution was struggling because of this. When we
// started thinking more about Javascript we realized that some objects
// behavedifferently in Javascript than in Ruby. We realized we should use
// anArray.


// What did you learn about iterating over arrays in JavaScript?
// Iterating over arrays in Javascript is a lot like iterating in Ruby. The
// big difference is that we use a for or while loop in Javascript and iterate
// over a range of numbers which then map to some countable thing in the array.
// In Ruby if the thing is countable, it can be iterated directly over.

// What was different about solving this problem in JavaScript?
// The main difference was that we needed to split the number string into an
// Array in order to make it easy to insert commas in. This is more
// straightforward to do with a string in Ruby.

// What built-in methods did you find to incorporate in your refactored
// solution?
// We incorporated the splice and join methods for arrays, toString(), split.