// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!



// Program Structure
// Write your own variable and do something to it.
var faveNum = 47
console.log("My favorite number is " + faveNum + ".")

//favorite food
prompt("What is your favorite food?")
//"juice"
alert("That's my favorite food too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var row = "";
for (counter = 0; counter < 8; counter++)
	console.log(row += "#");


// Functions

// Complete the `minimum` exercise.

function min(a,b){
	var smaller = (a < b) ? a : b;
	return smaller
}
console.log(min(8,4))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Matthew",
	age: 24,
	foods: ["pizza","rice","chicken"],
	quirk: "Loves 70s music"
}