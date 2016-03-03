// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// input: integer
// output: return comma seperated string
// steps:

// Covert to a string and firgure out how many characters is in the integer
// Check to see if it 4 characters
// If less than 4
//    return the same integers
// How many commas we need
// Reverse the string and insert the commas every 3 characters
// Reverse back the string

// Initial Solution
// var integer = 1000000;
// var stringOfInt = integer.toString();
// var revString = stringOfInt.split('').reverse().join('');
// var numLength = integer.toString().length;
// var numMudulo = numLength%3
// var comma = ",";1
// var position = 3;

// function seperateComma(integer){
// if(numLength < 4){
//   console.log(integer);
// }
// else if(numLength > 3 && numLength <= 6){
//   var commaString = [revString.slice(0,position), comma, revString.slice(position)].join('');
//   console.log(commaString.split('').reverse().join(''));
// }
// else if(numLength >= 7 && numMudulo !== 0){
//     var numberOfCommas = Math.floor(numLength / 3);
//     var revStringArray = revString.split('');
//     for (loop = 0; loop < numberOfCommas; loop += 1) {
//         revStringArray.splice(position, 0, ",")
//         position += 4;
//     }
//     console.log(revStringArray.reverse().join(''));
// }
// else if(numMudulo === 0){
//     var numberOfCommas = Math.floor(numLength / 3) -1;
//     var revStringArray = revString.split('');
//     for (loop = 0; loop < numberOfCommas; loop += 1) {
//         revStringArray.splice(position, 0, ",")
//         position += 4;
//     }
//     console.log(revStringArray.reverse().join(''));
// }

// }

// seperateComma(integer)



// Refactored Solution

var integer = 100000000;
var revString = integer.toString().split('').reverse().join('');
var numLength = integer.toString().length;
var revStringArray = revString.split('');
var numModulo = numLength%3
var position = 3;

function seperateComma(integer){
if(numLength < 4){
console.log(integer);
}
else if(numLength > 3 && numLength <= 6){
var commaString = [revString.slice(0,position), ",", revString.slice(position)].join('');
console.log(commaString.split('').reverse().join(''));
}
else if(numLength >= 7 && numModulo !== 0){
  var numberOfCommas = Math.floor(numLength / 3);
  for (loop = 0; loop < numberOfCommas; loop += 1) {
      revStringArray.splice(position, 0, ",")
      position += 4;
  }
  console.log(revStringArray.reverse().join(''));
}
else if(numModulo === 0){
  var numberOfCommas = Math.floor(numLength / 3) -1;
  for (loop = 0; loop < numberOfCommas; loop += 1) {
      revStringArray.splice(position, 0, ",")
      position += 4;
  }
  console.log(revStringArray.reverse().join(''));
}

}

seperateComma(integer)




// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We were aware of more Ruby built in methods and coming into JS we weren't entirely sure
// of all of the methods so we had to simplify the problem and there ended up being more steps required.
// The approach to the problem was similar but we had to do things a little bit different during implementation.

// What did you learn about iterating over arrays in JavaScript?
// We did not realize that we weren't able to add commas to strings which made us realize we should add each
// character as a an element in an array.  Once we got to that point it was easier for us to iterate
// through an array of characters with a for loop.

// What was different about solving this problem in JavaScript?
// The syntax was a major difference.  We had to take it a bit slow just to get use to the new syntax.

// What built-in methods did you find to incorporate in your refactored solution?
// We used a few new JS methods that were similar to Ruby including Math.floor, .reverse, .slice, .split, .join.