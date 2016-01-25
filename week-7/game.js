// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Make a rock, paper, scissors type game
// Goals: Rock beats scissors, paper beats rock, scissors beat paper.
// Characters: Player one, player two
// Objects: Both characters as separate objects with a choice property
// Functions: 1 - change the choice property of each player, 2 - report winner
 
// Pseudocode
// player 1 -- object with choice property (empty for now)
// player 2 -- object with choice property (empty for now)
// 
// function to change choice
// prompt player 1 for choice
// prompt player 2 for choice
// store choices for players into their choice property

// function to report winner
// IF player 1 choice is rock
//   IF player 2 choice is scissors
//   print player 1 wins
//	 ELSE IF player 2 choice is rock
//   print TIE
//	 ELSE
//   print player 2 wins
//
// IF player 1 choice is paper
//   IF player 2 choice is scissors
//   print player 2 wins
//	 ELSE IF player 2 choice is paper
//   print TIE
//   ELSE
//	 print player 1 wins
//
// IF player 1 choice is scissors
//   IF player 2 choice is rock
//	 print player 2 wins
//	 ELSE IF player 2 choice is scissors
//	 print TIE
//   ELSE
//   print player 1 wins

// Initial Code
// Rock, Paper, Scissors.
var player1 = {player: 1, choice: ""};
var player2 = {player: 2, choice: ""};

function changeChoice(){
  var option1 = prompt("Player 1: Rock, paper, or scissors?");
  player1.choice = option1;
  
  var option2 = prompt("Player 2: Rock, paper, or scissors?");
  player2.choice = option2;
};

function autoWin(player){
	player.choice = "rainbow";
};

function reportWin(player1, player2){
  if (player1.choice === "rock"){
    if (player2.choice === "paper" || player2.choice === "rainbow"){
      console.log("PLAYER 2 WINS! CONGRATULATIONS!");
    }
    else if (player2.choice === "rock"){
      console.log("TIE...Play again.");
    }
    else {
      console.log("PLAYER 1 WINS! CONGRATULATIONS!");
    }
  };
  if (player1.choice === "paper"){
    if (player2.choice === "scissors" || player2.choice === "rainbow"){
      console.log("PLAYER 2 WINS! CONGRATULATIONS!");
    }
    else if (player2.choice === "paper"){
      console.log("TIE...Play again.");
    }
    else {
      console.log("PLAYER 1 WINS! CONGRATULATIONS!");
    }
  };
  if (player1.choice === "scissors"){
    if (player2.choice === "rock" || player2.choice === "rainbow"){
      console.log("PLAYER 2 WINS! CONGRATULATIONS!");
    }
    else if (player2.choice === "scissors"){
      console.log("TIE...Play again.");
    }
    else {
      console.log("PLAYER 1 WINS! CONGRATULATIONS!");
    }
  };

};


changeChoice()
console.log(player1)
console.log(player2)
autoWin(player2)
reportWin(player1,player2)

// Pass on refactor for sake of time

// Reflection
// What was the most difficult part of this challenge?
// The most difficult part of this challenge was figuring out what kind of
// game to make and how in depth to make it. For the sake of time I went with
// the simplest game I could think of. If I had more time I would try to
// brainstorm more and create a cooler game.
//
// What did you learn about creating objects and functions that interact with
// one another?
// I learned to be careful when trying to access and modify properties of
// objects. It is not that easy to access properties using visual cues as the 
// structure of objects is a bit messy.


// Did you learn about any new built-in methods you could use in your
// refactored solution? If so, what were they and how do they work?
// N/A

// How can you access and manipulate properties of objects?
// You can access them with object.property or object["property"]. You can
// manipulate them with object.property = .