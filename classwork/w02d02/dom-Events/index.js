document.addEventListener("DOMContentLoaded",function(){


	var myForm = document.getElementById("myForm");

	myForm.addEventListener("submit",function(event){
		var firstNameField = document.getElementById("firstname");
		event.preventDefault(); 
		// stops the function from happening that it normally does
		if(firstNameField.value){
			console.log(firstNameField.value + " submitted");
			newDiv(firstNameField.value);

		}else{
			console.log("Empty!")
		}
	})



	function newDiv(text){
		var elementBox = document.createElement("div");
		var location = document.getElementsByTagName("body");
		elementBox.innerHTML = text;
		elementBox.classList.add("styling");
		document.body.appendChild(elementBox);
	} 

















})