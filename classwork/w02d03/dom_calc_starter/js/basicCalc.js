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
function add(first, second){
	return first+second;
}
//subtract
function subtract(first, second){
	return first-second;
}
//divide
function divide(first, second){
	return first/second;
}
//multiply
function multiply(first, second){
	return first*second;
}
//------------------------------------------------------------------------
//calculation function
function calculation(firstNumber, secondNumber,operator){
	switch(operator){
		case "+":
			display.value = add(firstNumber,secondNumber);
		break;
		case "-":
			display.value = subtract(firstNumber,secondNumber);
		break;
		case "x":
			display.value = multiply(firstNumber,secondNumber);
		break;
		case "/":
			display.value = divide(firstNumber,secondNumber);
		break;
	}
}
//------------------------------------------------------------------------
//clear the calculator
function clearCal(){
	first_number = null;
	second_number = null;
	operator = null;
	display.value = "";	
}
//display and store clicked buttons
function updateAndDisplayNumber(){
	var btn = parseFloat(this.value);
	display.value = btn;
	if(first_number === null){
		first_number = btn;
	}else{
		second_number = btn;
	}
}
//display and store operator
function updateAndDisplayOperator(){
	var op = this.value;
	operator = op;
}
setUpEventListeners();

