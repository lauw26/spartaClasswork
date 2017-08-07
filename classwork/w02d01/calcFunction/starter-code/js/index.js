

function addTwo(n1 , n2) {
	return n1+ n2


}

function addThree(n1, n2, n3) {
	return n1+n2+n3


}


function multiplyTwo(n1,n2) {
	return n1*n2



}


function increaseByPercentage(total, percentage) {
	return total + (total*(percentage/100))


}


function reverseWord(word) {
return word.split("").reverse().join("")


}

function celciusToFahrenheit(celcius) {

return (celcius*(9/5))+32

}

function fahrenheitToCelcius(fahr) {
return (fahr-32)*(5/9)



}

// BONUS QUESTION
function stripVowels(word) {
return word.replace(/[aeiou]/gi, "")
  

}


// do not delete
runTests();
