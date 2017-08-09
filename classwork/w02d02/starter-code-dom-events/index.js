// write code here

document.addEventListener("DOMContentLoaded",function(){
	var button = document.getElementById("myButton");
	button.addEventListener("click",function(){
		console.log("click click");
	})
	console.log(button); 

	var myForm = document.getElementById("myForm");

	myForm.addEventListener("submit",function(event){
		var firstNameField = document.getElementById("firstname");
		event.preventDefault(); 
		// stops the function from happening that it normally does
		if(firstNameField.value){
			console.log(firstNameField.value + " submitted");
		}else{
			console.log(firstNameField.value)
			console.log("Empty!")
		}
	})

	var buttons = document.querySelectorAll(".myButtons")
	for(var i = 0; i<buttons.length;i++){
		var b = buttons[i];

		b.addEventListener("click",function(event){
			console.log(this.value + " was clicked") ;
		})

	}
})


