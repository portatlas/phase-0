// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Theo Paul:
// This challenge took me 3.5 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Steps:
// 1. Assign each individual that recieved a vote as a property of the potential position
// 2. Iterate through the votes and count how many time a vote was given for an individual
// 3. Assign the total count as a value associated to the name of the position
// 4. Once the iteration is complete find the winner
// 5. Sort throught to find who recieved the most vote for each position
// 6. Assign the name of the winner to the position

// input: votes
// output: a tally with count of votes for Bob, the winner for each position


// __________________________________________
// Initial Solution

// console.log(votes["Alex"]["president"]);


// for (var i = 0; i < 1; i++) {
//   for (var key in votes){
//       var a = votes[key]["president"]
//       voteCount["president"][a] = voteCount["president"][a]? ++voteCount["president"][a]: 1;
//   }
// }
// var sortable = [];
// for (var tallyCount in voteCount["president"])
//       sortable.push([tallyCount, voteCount["president"][tallyCount]])
//       sortable.sort(function(b, a) {return a[1] - b[1]})
//       officers.president = sortable[0][0];


// for (var i = 0; i < 1; i++) {
//   for (var key in votes){
//       var a = votes[key]["vicePresident"]
//       voteCount["vicePresident"][a] = voteCount["vicePresident"][a]? ++voteCount["vicePresident"][a]: 1;
//   }
// }
// var sortable = [];
// for (var tallyCount in voteCount["vicePresident"])
//       sortable.push([tallyCount, voteCount["vicePresident"][tallyCount]])
//       sortable.sort(function(b, a) {return a[1] - b[1]})
//       officers.vicePresident = sortable[0][0];

// for (var i = 0; i < 1; i++) {
//   for (var key in votes){
//       var a = votes[key]["secretary"]
//       voteCount["secretary"][a] = voteCount["secretary"][a]? ++voteCount["secretary"][a]: 1;
//   }
// }
// var sortable = [];
// for (var tallyCount in voteCount["secretary"])
//       sortable.push([tallyCount, voteCount["secretary"][tallyCount]])
//       sortable.sort(function(b, a) {return a[1] - b[1]})
//       officers.secretary = sortable[0][0];

// for (var i = 0; i < 1; i++) {
//   for (var key in votes){
//       var a = votes[key]["treasurer"]
//       voteCount["treasurer"][a] = voteCount["treasurer"][a]? ++voteCount["treasurer"][a]: 1;
//   }
// }

// var sortable = [];
// for (var tallyCount in voteCount["treasurer"])
//       sortable.push([tallyCount, voteCount["treasurer"][tallyCount]])
//       sortable.sort(function(b, a) {return a[1] - b[1]})
//       officers.treasurer = sortable[0][0];



// __________________________________________
// Refactored Solution



for (var i = 0; i < 1; i++) {
  for (var key in votes){
      var a = votes[key]["president"]
      voteCount["president"][a] = voteCount["president"][a]? ++voteCount["president"][a]: 1;
  }
}
var sortable = [];
for (var tallyCount in voteCount["president"])
      sortable.push([tallyCount, voteCount["president"][tallyCount]])
      sortable.sort(sorter)
      officers.president = sortable[0][0];


for (var i = 0; i < 1; i++) {
  for (var key in votes){
      var a = votes[key]["vicePresident"]
      voteCount["vicePresident"][a] = voteCount["vicePresident"][a]? ++voteCount["vicePresident"][a]: 1;
  }
}
var sortable = [];
for (var tallyCount in voteCount["vicePresident"])
      sortable.push([tallyCount, voteCount["vicePresident"][tallyCount]])
      sortable.sort(sorter)
      officers.vicePresident = sortable[0][0];

for (var i = 0; i < 1; i++) {
  for (var key in votes){
      var a = votes[key]["secretary"]
      voteCount["secretary"][a] = voteCount["secretary"][a]? ++voteCount["secretary"][a]: 1;
  }
}
var sortable = [];
for (var tallyCount in voteCount["secretary"])
      sortable.push([tallyCount, voteCount["secretary"][tallyCount]])
      sortable.sort(sorter)
      officers.secretary = sortable[0][0];

for (var i = 0; i < 1; i++) {
  for (var key in votes){
      var a = votes[key]["treasurer"]
      voteCount["treasurer"][a] = voteCount["treasurer"][a]? ++voteCount["treasurer"][a]: 1;
  }
}
var sortable = [];
for (var tallyCount in voteCount["treasurer"])
      sortable.push([tallyCount, voteCount["treasurer"][tallyCount]])
      sortable.sort(sorter)
      officers.treasurer = sortable[0][0];


function sorter (b,a){
  return a[1] - b[1]
};



// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
// Iterating through nested objects was a bit tricky in the first place. However, experitmenting through
// the data structure was helpful.

// Were you able to find useful methods to help you with this?
// Yes, there were a number of useful methods, the for ...in was useful in iterating through the array.
// The push and sort method was also helpful in sorting through to finding the winner.

// What concepts were solidified in the process of working through this challenge?
// I was able to see how to iterate through an object and count items.  I think I was able to do research
// to piece different codes togehter; however, I need some time to dissect through each line and understand
// what it is doing.





// __________________________________________
// Test Code:  Do not alter code voteCountelow this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)