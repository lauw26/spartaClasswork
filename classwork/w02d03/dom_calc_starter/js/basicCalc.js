//Set intital state variables
//find numbers
var numbers = document.getElementsByClassName("number");
//operators
var operators = document.getElementsByClassName("operator");
//equals
var equal = document.getElementsByClassName("eq")[0];
//clear
var clear = document.getElementsByClassName("clear")[0];
//display
var display = document.getElementsByClassName("display")[0];
//variable for first number in calculations
var first_number = null;
//variable for second number in calculations
var second_number = null;
//variable operation
var operator = null;
// variable for answers of calculations
var answer = null;
//----------------------------------------------------------------------
//Set up event listener
function setUpEventListeners(){
	//number event listeners
	for(var i = 0;i<numbers.length;i++){
		numbers[i].addEventListener("click",updateAndDisplayNumber);
	}
	//operation event listeners
	for(var i = 0;i<operators.length;i++){
		operators[i].addEventListener("click",updateAndDisplayOperator);
	}
	//equal event listener
	equal.addEventListener("click",function(){
		calculation(first_number,second_number,operator);
	});
	//clear event listener
	clear.addEventListener("click",function(){
		clearCal();
	});
}

//functions for calculator

//add

//subtract

//divide

//multiply

//------------------------------------------------------------------------
//calculation function
function calculation(firstNumber, secondNumber,operator){
}

//------------------------------------------------------------------------
//clear the calculator
function clearCal(){
 	console.log("calc cleared!")
}
//display and store clicked buttons
function updateAndDisplayNumber(){
	
}
//display and store operator
function updateAndDisplayOperator(){
}

setUpEventListeners();
