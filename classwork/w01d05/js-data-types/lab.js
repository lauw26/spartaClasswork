// create a variable called firstName that contains a string
var firstName = "William";
// create an array that contains three names
var namesArray = ["Adam","Bob","William"];
// use your firstName variable for the third name
// create a variable called numberOfNames that contains the number of people in your names array
var numberOfNames = namesArray.length;
// create a variable called age and put an appropriate data type in it
var age = 21;
// create a variable called younger that contains a third of this age
var younger = 21/3;
// create a null variable called empty
var empty = null;
// create a variable called phoneNumber and store this number 07888777396
// ( think about what type of data would be best for this )
var phoneNumber = "07888777396";
// create a variable called friend
// extract the second value from your namesArray and put it in friend
var friend = namesArray[1];
// create a variable called sentence that contains the following sentence
// I'm not a number, I'm fairly sure I'm a String
var sentence = "I'm not a number, I'm fairly sure I'm a String";

// create a variable called sentenceLength that contains the length of the sentence
var sentenceLength = sentence.length;


// BONUS
// Research how to create a JSON object called person
// Use the person object tests to add the correct data

var person = 
			{
				name: firstName,
				friends: namesArray,
				bestFriend: friend, 
                age: age,
                phoneNumber:phoneNumber,
                quote: sentence
			}


