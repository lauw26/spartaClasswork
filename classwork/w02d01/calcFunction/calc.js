var result = 0;
var words;
var userNum = function(){
	var a = prompt("Enter a number")
	return a
}
function run(){
	var input = prompt("1.Add\n2.Subtract\n3.Multiply\n4.Divide\n5.Raise to the power\n6.Square root\n7.Largest of Two\n8.Largest of Three\n9.Length of sentence");
	console.log (input);
	switch (input) {
		case "1":
			console.log(add(userNum(),userNum()));
		break;
		case "2":
			console.log(sub(userNum(),userNum()));
		break;
		case "3":
			console.log(multi(userNum(),userNum()));
		break;
		case "4":
			console.log(div(userNum(),userNum()));
		break;
		case "5":
			console.log(pow(userNum(),userNum()));
		break;
		case "6":
			console.log(sq(userNum()));
		break;
		case "7":
			console.log(compare2(parseInt(userNum()), parseInt(userNum())));
		break;
		case "8":
			console.log(compare3(parseInt(userNum()), parseInt(userNum()), parseInt(userNum())));
		break;
		case "9":
			console.log(word(userNum()));
		break;
		default : console.log("Error");
	}
}
function add(num1,num2){
	return num1+num2
}
function sub(num1,num2){
	return num1-num2
}
function multi(num1,num2){
	return num1*num2
}
function div(num1,num2){
	return num1/num2
}
function pow(num1,num2){
	return Math.pow(num1,num2)
}
function sq(num1){
	return Math.pow(num1,2)
}
function compare2(num1, num2){
	if(num1 > num2) {
		return num1;
	} else {
		return num2;
	}
}
function compare3 (num1,num2,num3) {
	if (num1 > num2 && num1 > num3) {
		return num1;
	} else if(num2 > num1 && num2 > num3) {
		return num2;
	} else {
		return num3;
	}
}
function word(input){
	words = input.split(" ");
	return words.length;
}
run();