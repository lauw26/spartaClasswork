// var listItems = ["Go out","Come back" , "Buy food" , "Eat food"];

// function addListItem(value) {

// }

// var selected = document.querySelectorAll("li.selected");
// console.log(selected);

// for(var i= 0; i < selected.length; i++)
// {
// 	selected[i].innerHTML = "Hello Will";
// }
// var pTag = document.createElement("p");
// pTag.innerHTML = "this is my amazing new p tag"
// document.getElementById("wrapper	").appendChild(pTag);

var list = ["Niall","Richard","Steve","Tim","Lexie","Rob","Kieron","Ollie"];
function addNames(i){
		var liItem = document.createElement("li");
		liItem.innerHTML = list[i];
		document.getElementById("list").appendChild(liItem);
}

function nameChange(i){
		if(((i+1)%2) == 0){
			document.querySelectorAll("li")[i].classList.add('even');
		}
}

for(var i =0; i < list.length; i++){
	addNames(i);
}
for(var i = 0; i<document.querySelectorAll("li").length;i++){
	nameChange(i);

}
var count_Span = document.querySelectorAll("li").length;

document.getElementById("count").innerHTML = count_Span;