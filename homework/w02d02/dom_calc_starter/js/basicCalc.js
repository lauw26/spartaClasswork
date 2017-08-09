// Setup initial state variables
// Variables defined in global scope, not the best idea
var num = "empty";
var operator;
var result = "";
var operatorInput = false;
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
	operatorInput = false;	
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
	num = parseInt(num);
	resulting();
	display.value = result;
	num = "";

})

clear[0].addEventListener("click",function(){
	console.log(this.value + " was clicked");
	result = "";
	num = "empty";
	operator = false;
	console.log(result);
	display.value = 0;
})

for(var i = 0; i<numbers.length;i++){
		var b = numbers[i];
		b.addEventListener("click",function(event){
			console.log(this.value + " was clicked");
			if(num === "empty"){
				result += this.value;
				console.log("result " + result);
				display.value = result;
			}else{
				num += this.value;
				console.log("num " + num)
				display.value = num;
			}		

		})
	}
for(var i = 0; i<operators.length;i++){
		var b = operators[i];
		b.addEventListener("click",function(event){
			display.value = this.value;
			if(num === "empty"){
				result = parseInt(result);
				num = "";
			}
			console.log(this.value + " was clicked");
			operator = this.value;
		})
	}










