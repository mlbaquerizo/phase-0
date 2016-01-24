// JavaScript Olympics

// I paired with Ryan Salerno on this challenge.

// This challenge took me 2 hours.


// Warm Up




// Bulk Up
var athletes = [
  {
    name: "Sarah Hughes",
    sport: "Ice Skating"
  },
  {
    name: "Michael Phelps",
    sport: "Swimming",
  }
];

function addWin(athletes){
  for (athlete in athletes){
    athletes[athlete].win = athletes[athlete].name + " won " + athletes[athlete].sport;
  }
  return athletes;
}

// console.log(addWin(athletes))



// Jumble your words

function reverse(string){
 string = string.split("").reverse().join("");
 return string;
}
//console.log(reverse('testword'))

// 2,4,6,8

function evens(arr) {
 var even = [];
 for (num in arr){
   var item = arr[num];
   if (item % 2 === 0){
     even.push(item);
   }
 }
 return even;
 // traverse array and if even? return to new array else ignore
}

// console.log(evens([1,2,3,4,5,6,10,11]))

// "We built this city"



// var michaelPhelps = {
//  name: 'Michael Phelps',
//  age: 29,
//  sport: 'swimming',
//  quote: "It's medicinal I swear!"
// };

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

// var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
// console.log(michaelPhelps.constructor === Athlete)
// console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// I solidified my knowledge about objects and properties. I went into this
// challenge without prior knowledge of objects as I got a late start this week.
// I also got some practice with for loops in terms of Arrays. And I got to
// see how Arrays differ in Javascript and Ruby.

// What are constructor functions?
// I noticed that constructor functions behave similarly to Ruby Classes. We
// can initialize instances of the constructor that will take on properties
// defined in the constructor function.

// How are constructors different from Ruby classes (in your research)?
// One way they differ is that they are used to create Javascript objects,
// which are a bit different from the Ruby objects created using Ruby classes.
// A Javascript object is kind of like a Ruby hash, where each property and
// value pair is stored as a list. 