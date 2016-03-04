// Pseudocode
// I want to create 3 functions, each taking as an input a set of numbers.
// Function 1 - Sum
// Input: Set of numbers
// Output: The sum of the numbers
// Steps:
//   1. Create an array of a set of numbers
//   2. Use a Javascript method or iteration to sum those numbers
//   3. Return the sum of those numbers

var numberArray = [2,2,3,4, 7, 6 ,100 , 8];

function sum (numbers){
  var total = numbers.reduce(function(a,b){
    return a + b;
  });
  console.log(total);
};

sum(numberArray);

// Function 2 - Mean
// Input: Set of numbers
// Output: The "mean" or mathematical average
// Steps:
//   1. Create an array of a set of numbers
//   2. Use a Javascript method or iteration to sum those numbers
//   3. Return the sum of those numbers
//   4. Divide the sum by the amount of numbers in the original array (.length)
//   5. Return the mean

function mean (numbers){
  var arraySize = numbers.length;
  var total = numbers.reduce(function(a,b){
    return a + b;
  });
  var mean = total/arraySize
  console.log(mean);
};

mean(numberArray);


// Function 3 - Median
// Input: Set of numbers, odd or even
// Output: The "median" or middle number from a set of numbers
// Steps:
//   1. Take the array and sort by value
//   2. Create a variable that is the center index value by taking the number of values and dividing them by 2.  You want to round the number down to get the index value, since index starts at 0.
//   3. If the amount of numbers in your array is not divisible by 2 with no remainder (x % 2 !== 0), or an odd number, then the median is the value at center index.
//   4. If the amount of numbers in your array is divisible by 2 evenly (x % 2 == 0), then add the value at center index with the value at (center index -1) and divide them by two
//   5. Return Median



function median (numbers){
  var sortedArray = numbers.sort(function (a,b){return a-b});;
  var arraySize = numbers.length;
  var centerIndex = Math.floor(arraySize/2)
  if(arraySize%2 !== 0){
    console.log(numbers[centerIndex]);
  }
  else (arraySize%2 === 0)
  {
    console.log((numbers[centerIndex] + numbers[centerIndex-1])/2 );
  }
};

median(numberArray);