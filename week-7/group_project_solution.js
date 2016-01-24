//Person 4: Refactor and Translate to User Stories
/*
1. Calculating a sum
Declare a function that takes two arguments
ADD the arguments together
RETURN the sum
*/
// var sum = function(num1, num2) {
//   return(num1 + num2);
// }
// console.log(sum(1,4))

// Refactored:
function sum(num1, num2){
  return num1 + num2;
};

//As a user, I want to add two numbers together.

console.log(sum(1,2))

/*
2. Calculating the sum of an array with an odd length
Declare a function that takes an array as an argument
IF the length of that array is NOT divisible by 2
  ADD all the numbers in the array together
  RETURN the sum
ELSE
  do nothing
*/

// var oddSum = function(numArray) {
//   var sum = 0;
//   for (var i = 0; i < numArray.length; i++) {
//     if (numArray.length % 2 !== 0) {
//       sum += numArray[i];
//   }
// }
//   return sum;
// }

// Refactored:
function oddSum(numArray){
  var sum = 0;
  for (i in numArray){
    if(numArray.length % 2 !== 0){
      sum += numArray[i];
    }
  }
  return sum;
};

// As a user, I want to take a list of an odd amount of numbers and add all of
// the numbers together.

console.log(oddSum([1,2,3,4,5,6,7]))
console.log(oddSum([1,2,3,4,5,6]))

/*
3. Calculating the sum of an array with an even length
Declare a function that takes an array as an argument
IF the length of that array is divisible by 2
  ADD all the numbers in the array together
  RETURN the sum
ELSE
  do nothing
*/

// var evenSum = function(numArray) {
//   var sum = 0;
//   for (var i = 0; i < numArray.length; i++) {
//     if (numArray.length % 2 === 0) {
//       sum += numArray[i];
//   }
// }
//   return sum;
// }

//Refactored:
function evenSum(numArray){
  var sum = 0;
  for (i in numArray){
    if (numArray.length % 2 === 0){
      sum += numArray[i];
    }
  }
  return sum;
};

// As a user, I want to take a list of an even amount of numbers and add all
// of the numbers together.

console.log(evenSum([1,2,3,4,5,6]))

/*
4. Calculating a mean
Declare a function that takes an array as an argument
ADD the numbers together
DIVIDE the sum of those numbers by the number of elements in the array
RETURN the quotient
*/
// var arrayMean = function(numArray) {
//   var sum = 0;
//   var mean = 0;
//   for (var i = 0; i < numArray.length; i++) {
//       sum += numArray[i];
//       mean = sum/numArray.length;
//   }
//   return mean;
// }

// Refactored:
function arrayMean(numArray){
  var sum = 0;
  for (i in numArray){
    sum +=numArray[i];
  }
  var mean = sum/numArray.length;
  return mean;
};

//As a user, I want to find the mean of a list of numbers

console.log(arrayMean([1,2,3,4,5,6,7]))

/*
5. Calculating the mean of an array with an odd length
Declare a function that takes an array as an argument
  IF the length of that array is NOT divisible by 2
    ADD the numbers together
    DIVIDE the sum of those numbers by the number of elements in the array
    RETURN the quotient
  ELSE do nothinng.
*/
// var oddMean = function(numArray) {
//   var sum = 0;
//   var mean = 0;
//   for (var i = 0; i < numArray.length; i++) {
//     if (numArray.length % 2 !== 0) {
//       sum += numArray[i];
//       mean = sum/numArray.length;
//   }
// }
//   return mean;
// }

// Refactored:
function oddMean(numArray){
  var sum = 0;
  for (i in numArray){
    if (numArray.length % 2 !== 0){
      sum += numArray[i];
      var mean = sum/numArray.length;
    }
  }
  return mean;
};

// As a user, I want to find the mean of a list of numbers if that list has an
// odd amount of numbers

console.log(oddMean([1,2,3,4,5,6,7]))

// 6. Calculating the mean of an array with an even length
// Declare a function that takes an array as an argument
//   IF the length of that array is divisible by 2
//     ADD the numbers together
//     DIVIDE the sum of those numbers by the number of elements in the array
//     RETURN the quotient
//   ELSE do nothinng.


// var evenMean = function(numArray) {
//   var sum = 0;
//   var mean = 0;
//   for (var i = 0; i < numArray.length; i++) {
//     if (numArray.length % 2 === 0) {
//       sum += numArray[i];
//       mean = sum/numArray.length;
//   }
// }
//   return mean;
// }

// Refactored:
function evenMean(numArray){
  var sum = 0;
  for (i in numArray){
    if (numArray.length % 2 === 0){
      sum += numArray[i];
      var mean = sum/numArray.length;
    }
  }
  return mean;
};

// As a user, I want to find the mean of a list of numbers if that list
// contains an even amount of numbers

console.log(evenMean([1,2,3,4,5,6]))

/*
7. Calculate the median
  Declare a function that takes an array as an argument
  IF the length of that array is divisible by 2
    DIVIDE the length of the array by 2
    RETURN the element at that index of the array
  ELSE
    DIVIDE the length of the array by 2
    DIVIDE the length of the array by 2 and subtract 1
    RETURN the sum of the elements at those indeces of the array
*/

// var median = function(numArray) {
//   var length = numArray.length
//     if (length % 2 === 0) {
//       var medianIndex = length/2;
//       return numArray[medianIndex];
//   }
//     else {
//         var index1 = length/2;
//         var index2 = index1 - 1;
//     return (numArray[index1] + numArray[index2]);
// }
// }

// Refactored:
function median(numArray){
  if(numArray.length % 2 === 0){
    return numArray[numArray.length/2];
  }
  else {
    return (numArray[numArray.length/2] + numArray[numArray.length/2 - 1]);
  }
};

// As a user, I want to take an even list of numbers and find the last of the
// middle two numbers. When the list is odd I don't want a number.

console.log(median([1,2,3,4,5,6]))
console.log(median([1,2,3,4,5,6,7]))

/*
8.Calculate the median of an array with an odd number of elements
  Declare a function that takes an array as an argument
  IF the length of that array is NOT divisible by 2
    DIVIDE the length of the array by 2
    RETURN the element at that index of the array
  ELSE
    Do nothing
*/

// var oddMedian = function(numArray) {
//   var length = numArray.length
//   var medianIndex = 0;
//     if (length % 2 !== 0) {
//       var medianIndex = ((length-1)/2);
//       return numArray[medianIndex];
//   }
// }

// Refactored:
function oddMedian(numArray){
  if (numArray.length % 2 !== 0){
    return numArray[(numArray.length - 1)/2];
  }
};

// As a user, I want to find the number in the middle of a list of numbers of
// an odd amount.

console.log(oddMedian([1,2,3,4,5,6,7,3,9]))

/*
9. Calculate the median of an array with an even number of elements
  Declare a function that takes an array as an argument
    IF the length of that array is divisible by 2
      DIVIDE the length of the array by 2
      DIVIDE the length of the array by 2 and subtract 1
      RETURN the sum of the elements at those indeces of the array
    ELSE
      Do nothing
*/
// var evenMedian = function(numArray) {
//   var length = numArray.length;
//   var index1 = 0;
//   var index2 = 0;
//     if (length % 2 === 0) {
//        index1 = length/2;
//        index2 = index1 - 1;
//    var median = (numArray[index1] + numArray[index2]);
//   }
//   return median;
// }

// Refactored:
function evenMedian(numArray){
  if (numArray.length % 2 === 0){
    var index1 = numArray.length/2;
    var index2 = index1 - 1;
    return numArray[index1] + numArray[index2];
  }
};

// As a user, I want to take a list of numbers of an even amount, and find the sum of the two numbers in the middle of the list.

console.log(evenMedian([1,2,3,4,5,6,3,8]))