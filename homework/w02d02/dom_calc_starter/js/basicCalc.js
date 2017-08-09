// Setup initial state variables
// Variables defined in global scope, not the best idea
var num = "empty";
var operator;
var result = 0;
// Functions for calculator
function add(num1){
	console.log("adding");
	result += num1;
}
function subtract(num1){
	result -= num1;
}
function multiply(num1){
	console.log("multiply");
	result *= num1;
}
function divide(num1){
	result /= num1;
}
function resulting(){
	switch(operator){
		case "+":
			add(num);
		break;
		case "-":
			subtract(num);
		break;
		case "x":
			multiply(num);
		break;
		case "/":
			divide(num);
		break;
	}	
}
// Setup eventListeners
var numbers = document.getElementsByClassName("number");
var operators = document.getElementsByClassName("operator");
var equal = document.getElementsByClassName("eq");
var clear = document.getElementsByClassName("clear");
var display = document.getElementsByClassName("display")[0];

equal[0].addEventListener("click",function(){
	console.log(this.value + " was clicked");
	console.log(result);
	display.value = result;
})

clear[0].addEventListener("click",function(){
	console.log(this.value + " was clicked");
	result = 0;
	num = "empty";
	console.log(result);
	display.value = result;
})

for(var i = 0; i<numbers.length;i++){
		var b = numbers[i];
		b.addEventListener("click",function(event){
			console.log(this.value + " was clicked");
			display.value = this.value;
			if(num === "empty"){
				result = parseInt(this.value);
				num = 0;
			}else{
				num = parseInt(this.value);
				resulting();
			}		

		})
	}
for(var i = 0; i<operators.length;i++){
		var b = operators[i];
		b.addEventListener("click",function(event){
			display.value = this.value;
			console.log(this.value + " was clicked");
			operator = this.value;
		})
	}










