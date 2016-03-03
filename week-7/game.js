 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: play rock paper scissors
// Goals: win by choosing the right moves
// Characters: yourself and the computer
// Objects: rock, paper, scissors
// Functions: throw a move, and get a response

// Pseudocode
// create the moves (rock paper scissors)
// create user action
// create a random action of the computer
// evaluate result between user and computer
//

// Initial Code
// var rock = new Object();
// rock.form = "rock";
// rock.condition = "solid";

// var paper = new Object();
// paper.form = "paper";
// paper.condition = "flat";

// var scissors = new Object();
// scissors.form = "scissors";
// scissors.condition = "sharp";

// var moves = [rock.form, paper.form, scissors.form];
// var number = Math.floor(Math.random() * (3 - 0)) + 0;

// function computer(){
//   compmove = (moves[number]);
//   console.log("The computer busted out " + compmove + ".")
// }


// function user(){
//   usermove = prompt("rock, paper, or scissors.")
//   console.log("You choose " + usermove + ".")
// }


// function play(){
//   user()
//   computer()
//   if (usermove === compmove){
//     console.log("Its a Tie");
//   }
//   else if (usermove === "rock" && compmove === paper.form){
//     rock.condition = "covered";
//     console.log("Your rock is completedly " + rock.condition  + "!");
//     console.log("The computer wins!");
//   }
//   else if (usermove === "scissors" && compmove === paper.form){
//     scissors.condition = "as sharp as ever";
//     console.log("Your scissors is " + scissors.condition  + "!")
//     console.log("You win!");
//   }
//   else if (usermove === "paper" && compmove === rock.form){
//     paper.condition = "a little crumpled but feeling strong";
//     console.log("Your paper is " + paper.condition  + "!")
//     console.log("You win!");
//   }
//   else if (usermove === "rock" && compmove === scissors.form){
//     rock.condition = "harder than ever";
//     console.log("After completely crushing it, your rock is now " + rock.condition  + "!");
//     console.log("You win!");
//   }
//   else if (usermove === "paper" && compmove === scissors.form){
//     paper.condition = "tattered and torned"
//     console.log("Your sheet is " + paper.condition + "!");
//     console.log("The computer win!");
//   }
//   else if (usermove === "scissors" && compmove === rock.form){
//     scissors.condition = "shattered";
//     console.log("Your scissors are " + scissors.condition + "!")
//     console.log("The computer win!");
//   }
//   else
//     console.log("It looks like you provided an invalid entry. Please try again!")
// }

// play()


// Refactored Code
var rock = new Object();
rock.form = "rock";
rock.color = "grey";
rock.condition = "solid";

var paper = new Object();
paper.form = "paper";
paper.color = "white";
paper.condition = "flat";

var scissors = new Object();
scissors.form = "scissors";
scissors.color = "silver";
scissors.condition = "sharp";

var moves = [rock.form, paper.form, scissors.form];
var number = Math.floor(Math.random() * (3 - 0)) + 0;

function computer(){
  compmove = (moves[number]);
  console.log("The computer busted out " + compmove + ".")
}


function user(){
  usermove = prompt("rock, paper, or scissors.")
  console.log("You choose " + usermove + ".")
}


function play(){
  user()
  computer()
  if (usermove === compmove){
    console.log("Its a Tie");
  }
  else if (usermove === "rock" && compmove === paper.form){
    rock.color = "white";
    rock.condition = "covered";
    console.log("Your rock turned " + rock.color + " and is completedly " + rock.condition  + "!");
    console.log("The computer wins!");
  }
  else if (usermove === "scissors" && compmove === paper.form){
    scissors.color = "golden";
    scissors.condition = "as sharp as ever";
    console.log("Your scissors turned " + scissors.color + " and is " + scissors.condition  + "!")
    console.log("You win!");
  }
  else if (usermove === "paper" && compmove === rock.form){
    paper.color = "still white";
    paper.condition = "a little crumpled but feeling strong";
    console.log("Your paper is " + paper.color + " and " + paper.condition  + "!")
    console.log("You win!");
  }
  else if (usermove === "rock" && compmove === scissors.form){
    rock.color = "silver"
    rock.condition = "harder than ever";
    console.log("After completely crushing it, your rock absorded the opponent's materials and is now " + rock.color + " and " + rock.condition  + "!");
    console.log("You win!");
  }
  else if (usermove === "paper" && compmove === scissors.form){
    paper.color = "bloody";
    paper.condition = "tattered and torned"
    console.log("Your sheet is " + paper.color + " and " + paper.condition + "!");
    console.log("The computer win!");
  }
  else if (usermove === "scissors" && compmove === rock.form){
    scissors.color = "rusty";
    scissors.condition = "shattered";
    console.log("Your scissors are a bit " + scissors.color + " and have " + scissors.condition + "!")
    console.log("The computer win!");
  }
  else
    console.log("It looks like you provided an invalid entry. Please try again!")
}

play()


// Reflection
// What was the most difficult part of this challenge?
// The most difficult part of this challenge was create the objects and making it change based
// on certain conditions.  I decided to make the rock, paper, scissors objects and gave it
// attributes.

// What did you learn about creating objects and functions that interact with one another?
// Creating objects and attributes brought the game to life.  There as more rich functionality
// expecially when it was reacting to other conditions of the game.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I used the Math.random method to randomly create the computers moves.  I also had to experiement
// with accessing the objects attributes and getting it to display on the console correctly.

// How can you access and manipulate properties of objects?
// I manipulated the properties of the objects when certain conditions of the game was met.
// For example when the user choose a move, and lost, the properties of the object selected
// would change based on whether the user won or lost.
//
//
//
//
//
//
//