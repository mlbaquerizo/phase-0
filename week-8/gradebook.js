/*
Gradebook from Names and Scores
I worked on this challenge with Tom Yancey
This challenge took me 1 hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



// __________________________________________
// Write your code below.
// var gradebook = {};

// for(var i in students){
//   gradebook[students[i]] = {testScores: scores[i]};
// }

// gradebook.addScore = function(name, score) {
//   gradebook[name].testScores.push(score);
// };

// gradebook.getAverage = function(name) {
//   return average(gradebook[name].testScores);
// };

// function average(array){
//   var total = 0;
//   for (i in array){ 
//     total = total + array[i];
//   }
//   return (total / array.length);
// };


// __________________________________________
// Refactored Solution

var gradebook = {};

for(var i in students){
  gradebook[students[i]] = {testScores: scores[i]};
};

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};

function average(array) {
  var sum = array.reduce(function(a,b){
    return (a + b) 
  });
  return sum / array.length
};

// console.log(gradebook["Susan"].testScores)
// console.log(gradebook.Joseph.testScores)
// console.log(gradebook.getAverage("Joseph"))

// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// We learned a few ways of doing it. One would be to create the function
// outside of the object and then add it to the object. But the seemingly
// cleanest way to do it would be:
// object.functionName = function (){[code block];};

// How did you iterate over nested arrays in JavaScript?
// We used dot and bracket notation to access items in arrays. Whether we used
// dot or bracket notation depended on whether the variable was defined within
// the object or not.


// Were there any new methods you were able to incorporate? If so, what were
// they and how did they work?
// One new (to me) method I was able to incorporate was the .reduce method on
// arrays. I used this to find the sum of all the numbers in an array and then
// used that sum to get the average. In my case .reduce works by iterating
// through the array, and summing each consecutive number with the result of
// the previous sum. For instance, with [0,1,2,3], it would sum 0 + 1 = 1,
// then 2 + 1 = 3, then 3 + 3 = 6.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)