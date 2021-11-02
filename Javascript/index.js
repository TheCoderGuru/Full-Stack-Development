/* Data types 
undefined, null, boolean, string, symbol, number and objects.*/ 

var myName = "Beau"

myName = 8

let ourName = "freeCodeCamp"

const pi = 3.14

console.log( myName );


/* Storing variables with the assignment operator */



var a;

var b = 2;

console.log( a );

a = 7;

b = a;

console.log( a );



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



var myStr = "I am a \"double quoted\" string inside \"double quotes\"";




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

console.log( ourstr );




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

function wordBlanks( myNoun, myAdjective, myVerb, myAdverb ){

    var result = "";

    result = "The " + myAdjective + " " + myNoun +  " " + myVerb + " to the store " + myAdverb;

    return result;
}

    console.log( wordBlanks( "dog", "big", "ran", "quickly" ) );




/* Multidimensional Arrays */

var myarray = [ [ 1, 2, 3 ] , [ 4, 5, 6 ], [ 7, 8, 9 ], [ [ 10, 11, 12], 13, 14 ] ];
var myData = myarray[0][0]
console.log(myData);

var ourarray = [ "Stimpson", "J", "cat" ];
ourarray.push( ["happy", "joy" ] );

ourarray.pop(); // removes the last element from an array and returns it

ourarray.shift(); // removes the first element from an array and returns it

ourarray.unshift();  // inserts new elements at the start of an array and returns the array.

console.log(ourarray) 




/* Creating reusable functions */

function ourReusableFunction(){
    console.log( "Something pretty cool is about to happen");
}

ourReusableFunction();



/* Counting Cards */

var count = 0;

function cc(card){
    switch(card){
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

    var holdbet = 'Hold';
    if( count > 0 ){
        holdbet = 'Bet'
    }

    return count + " " + holdbet;

}



/* Building objects in javascript */

var myDog = {
    "name": "Happy Coder",
    "legs": 4,
    "tails": 1,
    "friends": ["everything"]
};




/* Accessing object properties with dot notation */


var testObj = {
    "hat": "ballcap",
    "shirt": "jersey",
    "shoes": "cleats"
};

var hatValue = testObj.hat




/* Accessing object properties with bracket notation */

var testObj = {
    "hat": "ballcap",
    "shirt": "jersey",
    "shoes": "cleats"
};

var hatValue = testObj["hat"]


/* Accessing object properties with variables */


var testobj = {
    12 : "Namath",
    16: "Montana",
    19: "Unitas"
};

var playerNumber = 16;
var player = testObj[playerNumber]


/* Updating object properties */

var myDog = {
    "name": "Coder",
    "legs": 4,
    "tails": 1,
    "friends": ["freeCodeCamp Campers"]
};

/* Add new properties to an object */

var ourDog = {
    "name": "Camper",
    "legs": 4,
    "tails": 1,
    "friends": []
};

ourDog.bark = "bow-wow";


/* Delete properties from an object */


delete ourDog.bark;

console.log( ourDog );


/* Using objects for lookups */


function phoneticLookup( val ){
    var result = "";

    switch(val){
        case "alpha":
            result = "Adams";
            break;
    }
}

/* Testing objects for properties */


var myObj = {
    gift: "pony",
    pet: "kitten",
    bed: "sleigh"
};

function checkObj(checkProp){
    if( myObj.hasOwnProperty( checkProp ) ){
        return myObj[ checkProp ]
    } else {
        return "Not Found"
    }
}

console.log(checkObj("hello"));


/* Manipulating complex objects */


var myMusic = {
    "artist": "Billy Joel",
    "title": "Piano Man",
    "release_year": 1973,
    "formats": [
        "cd",
        "8t",
        "lp"
    ],
    "gold": true
}

// Until next time