/* Data types 
undefined, null, boolean, string, symbol, number and objects.*/

var myName = "Beau";

myName = 8;

let ourName = "freeCodeCamp";

const pi = 3.14;

console.log(myName);

/* Storing variables with the assignment operator */

var a;

var b = 2;

console.log(a);

a = 7;

b = a;

console.log(a);

/* Uninitialized Variables */

var a = 1;
var b = 1;
var c = 10;

/* Case sensitivity in variables */

var StudyCapVarl;
var ProperCamelCase;
var TitleCaseOver;

StudyCapVarl = 10;
ProperCamelCase = " A string";
TitleCaseOver = 9000;

/* Compound Assignment with Augmented Addition, Augmented Subtraction, Augmented Multiplication, Augmented Divison*/

var a = 3;
var b = 17;
var c = 12;

a += 12;
b += 9;
c += 7;

a -= 12;
b -= 9;
c -= 7;

a *= 12;
b *= 9;
c *= 7;

a /= 12;
b /= 9;
c /= 7;

/* Declaring String Variables */

var firstName = "Alan";
var lastName = "Turing";

/* Escaping Literal Quotes */

var myStr = 'I am a "double quoted" string inside "double quotes"';

/* Quoting strings with single quotes */

var myStr = '<a href="http://www.example.com" target="blank"></a>';

/* Escape Sequences 

\'      single quote
\"      double quote
\\      backslash
\n      newline
\r      carriage return
\t      tab
\b      backspace
\f    form feed
*/

/* Concatenating strings with the plus operator */

var ourstr = "I come first. " + " I come second";

console.log(ourstr);

/* Concatenating strings with the plus equal operator */

var our = "I come first";
our += "I come second";

/* Constructing strings with variables */

// var ourName = "freeCodeCamp";
var ourStr = "Hello, our name is " + ourName + ", how are you?";

/* Appending variables to strings */

var anAdjective = "awesome!";
var ourStr = "freeCodeCamp is ";
ourStr += anAdjective;

/* Find length of a string */

var firstName = "Ada";

firstnamelength = firstName.length;

/* Bracket Notation */

var firstName = "Shane";

firstletteroffirstname = firstName[0];

/* Bracket Notation to find the nth character in a string */

var secondletteroffirstname = firstName[1];

/* Bracket Notation to find the last character in string */

var lastletteroffirstname = firstName[firstName.length - 1];

/* Bracket Notation to find the nth to last character in a string */

var secondtolastletteroffirstname = firstName[firstName.length - 2];

/* Understanding string immutability */

function wordBlanks(myNoun, myAdjective, myVerb, myAdverb) {
  var result = "";

  result =
    "The " +
    myAdjective +
    " " +
    myNoun +
    " " +
    myVerb +
    " to the store " +
    myAdverb;

  return result;
}

console.log(wordBlanks("dog", "big", "ran", "quickly"));

/* Multidimensional Arrays */

var myarray = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [[10, 11, 12], 13, 14],
];
var myData = myarray[0][0];
console.log(myData);

var ourarray = ["Stimpson", "J", "cat"];
ourarray.push(["happy", "joy"]);

ourarray.pop(); // removes the last element from an array and returns it

ourarray.shift(); // removes the first element from an array and returns it

ourarray.unshift(); // inserts new elements at the start of an array and returns the array.

console.log(ourarray);

/* Creating reusable functions */

function ourReusableFunction() {
  console.log("Something pretty cool is about to happen");
}

ourReusableFunction();

/* Counting Cards */

var count = 0;

function cc(card) {
  switch (card) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      count++;
      break;
    case 10:
    case "J":
    case "Q":
    case "K":
    case "A":
      count--;
      break;
  }

  var holdbet = "Hold";
  if (count > 0) {
    holdbet = "Bet";
  }

  return count + " " + holdbet;
}

/* Building objects in javascript */

var myDog = {
  name: "Happy Coder",
  legs: 4,
  tails: 1,
  friends: ["everything"],
};

/* Accessing object properties with dot notation */

var testObj = {
  hat: "ballcap",
  shirt: "jersey",
  shoes: "cleats",
};

var hatValue = testObj.hat;

/* Accessing object properties with bracket notation */

var testObj = {
  hat: "ballcap",
  shirt: "jersey",
  shoes: "cleats",
};

var hatValue = testObj["hat"];

/* Accessing object properties with variables */

var testobj = {
  12: "Namath",
  16: "Montana",
  19: "Unitas",
};

var playerNumber = 16;
var player = testObj[playerNumber];

/* Updating object properties */

var myDog = {
  name: "Coder",
  legs: 4,
  tails: 1,
  friends: ["freeCodeCamp Campers"],
};

/* Add new properties to an object */

var ourDog = {
  name: "Camper",
  legs: 4,
  tails: 1,
  friends: [],
};

ourDog.bark = "bow-wow";

/* Delete properties from an object */

delete ourDog.bark;

console.log(ourDog);

/* Using objects for lookups */

function phoneticLookup(val) {
  var result = "";

  switch (val) {
    case "alpha":
      result = "Adams";
      break;
  }
}

/* Testing objects for properties */

var myObj = {
  gift: "pony",
  pet: "kitten",
  bed: "sleigh",
};

function checkObj(checkProp) {
  if (myObj.hasOwnProperty(checkProp)) {
    return myObj[checkProp];
  } else {
    return "Not Found";
  }
}

console.log(checkObj("hello"));

/* Manipulating complex objects */

var myMusic = {
  artist: "Billy Joel",
  title: "Piano Man",
  release_year: 1973,
  formats: ["cd", "8t", "lp"],
  gold: true,
};

// Accessing Nested Objects

var myStorage = {
  car: {
    inside: {
      "glove box": "maps",
      "passenger seat": "crumbs",
    },
    outside: {
      trunk: "jack",
    },
  },
};

var gloveBoxContents = myStorage.car.inside["glove box"];

console.log(gloveBoxContents);

// Accessing nested arrays

var myPlants = [
  {
    type: "flowers",
    list: ["rose", "tulip", "dandelion"],
  },
];

console.log(myPlants[0].list[0]);

var collection = {
  2548: {
    album: "Slippery When Wet",
    artist: "Bon Jovi",
    tracks: ["Let It Rock", "You Give Love a Bad Name"],
  },
};

// Record collection

var collectionCopy = JSON.parse(JSON.stringify(collection));

function updateRecords(id, prop, value) {
  if (value === " ") {
    delete collection[id][prop];
  } else if (prop === "tracks") {
    collection[id][prop] = collection[id][prop] || [];
    collection[id][prop].push(value);
  }

  return collection;
}

console.log(updateRecords(5439, "artist", "ABBA"));

// Iterate with while loops

var myArray = [];

var i = 0;
while (i < 5) {
  myArray.push(i);
  i++;
}

console.log(myArray);

// Iterate with for loops

var myArray = [];

for (var i = 0; i <= 5; i++) {
  ourarray.push(i);
}

// Iterate odd numbers with a for loop

var ourArray = [];

for (var i = 0; i < 10; i += 2) {
  ourArray.push(i);
}

var ourArray = [];

for (var i = 0; i < 10; i += 2) {
  ourArray.push(i);
}

console.log(ourArray);

// Count backwards with a for loop

var ourArray = [];

for (var i = 10; i > 0; i -= 2) {
  ourArray.push(i);
}

console.log(ourArray);

// Iterate through an array with a for loop

var ourArr = [9, 10, 11, 12];
var ourTotal = 0;

for (var i = 0; i < ourArr.length; i++) {
  ourTotal += ourArr[i];
}

console.log(ourTotal);

// Nesting for loops

function multiplyAll(arr) {
  var product = 1;

  for (var i = 0; i < arr.length; i++) {
    for (var j = 0; j < arr.length; j++) {
      product *= arr[i][j];
    }
  }
  return product;
}

var product = multiplyAll([1, 2], [3, 4], [5, 6, 7]);

console.log(product);

// Do while loops

do {
  myArray.push(i);
  i++;
} while (i < 5);

console.log(i, myArray);

// Profile Lookup

var contacts = [
  {
    firstName: "Akira",
    lastName: "Laine",
    number: "0543236543",
    likes: ["Pizza", "Coding", "Brownie Points"],
  },
  {
    firstName: "Harry",
    lastName: "Potter",
    number: "0994372684",
    likes: ["Hogwarts", "Magic", "Hagrid"],
  },
];

function lookUpProfile(name, prop) {
  for (var i = 0; i < contacts.length; i++) {
    if (contacts[i].firstName === name) {
      return contacts[i][prop] || "No such property";
    }
  }

  return "No such contact";
}

var data = lookUpProfile("Akira", "likes");

console.log(data);

// Generate Random Fractions

function randomFraction() {
  return Math.random();
}

console.log(randomFraction());

// Generate Random Whole Numbers

var randomNumberBetween0and19 = Math.floor(Math.random() * 20);

function randomWholeNum() {
  return Math.floor(Math.random() * 10);
}

console.log(randomWholeNum());

// Generate Random Whole Numbers within a range

function ourRandomRange(ourMin, ourMax) {
  return Math.floor(Math.random() * (ourMax - ourMin + 1)) + ourMin;
}

ourRandomRange();

function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}

var myRandom = randomRange(5, 15);

console.log(myRandom);

// use the parseInt function

function convertToInteger(str) {
  return parseInt(str);
}

convertToInteger("56");

// parseInt function with radix

function convertToInteger2(str) {
  return parseInt(str, 2);
}

// Ternary operator

function checkEqual(a, b) {
  if (a === b) {
    return true;
  } else {
    return false;
  }
}

console.log(checkEqual(1, 2));

// Multiple conditional ternary operators

function checkSign(num) {
  return num > 0 ? "positive" : num < 0 ? "negative" : "zero";
}

console.log(checkSign(0));

// Differences between var and let keywords

let catName = "Quincy";

let quote;

// let catName = "Beau";

function catTalk() {
  "use strict";

  catName = "Oliver";
  quote = catName + " says Meow!";
}

catTalk();

// compare scopes of the var and let keywords

function checkScope() {
  "use strict";
  var i = "function scope";
  if (true) {
    i = "block scope";
    console.log("Block scope i is: ", i);
  }
  console.log("Function scope i is: ", i);
  return i;
}

checkScope();

// Declare a read-only variable using the const keyword

function printManyTimes(str) {
  "use strict";

  const sentence = str + " is cool";

//   sentence = str + " is amazing!";

  for (var i = 0; i < str.length; i += 2) {
    console.log(sentence);
  }
}

printManyTimes("freecodecamp");

// Mutate an array declared with const

const s = [5, 6, 7];

function editInPlace() {
  "use strict";

  s[0] = 2;
  s[1] = 5;
  s[2] = 7;
}

// Prevent object mutation

function freezeObj() {
  "use strict";
  const MATH_CONSTANTS = {
    PI: 3.14,
  };

  Object.freeze(MATH_CONSTANTS);

  try {
    MATH_CONSTANTS.PI = 99;
  } catch (ex) {
    console.log(ex);
  }
  return MATH_CONSTANTS.PI;
}

const PI = freezeObj();

console.log( PI );


// Use arrow functions to write concise anonymous functions 

const magic = () => new Date();


// Write arrow functions with parameters

const myConcat = ( arr1, arr2 ) => arr1.concat( arr2 );

console.log( myConcat );


// Higher Order Arrow functions

const realNumberArray = [ 4, 5.6, -9.8, 3.14, 42, 6, 8.34, 2 ]

const squareList = ( arr ) => {
    const squaredIntegers = arr;
    return squaredIntegers;
}

const squaredIntegers = squareList( realNumberArray );
console.log( squaredIntegers );

// Write higher order arrow functions 

const increment = ( function(){
    return function increment( number, value = 1 ){
        return number + value;
    };
})();

console.log( increment( 5, 2 ) );
console.log( increment( 5 ) );


// use the rest operator with function arguments

const sum = ( function() {
    return function sum( ...args ){
        return args.reduce(( a, b ) => a + b, 0 );
    };
})();

console.log( sum( 1, 2, 3, 4 ) );


// use the spread operator to evaluate the args all in one place.

const arr1 = [ 'Jan', 'Feb', 'Mar', 'Apr' ];
let arr2;
( function() {
    arr2 = [ ...arr1 ];
    arr1[ 0 ] = 'potato'
})();

console.log( arr2 );