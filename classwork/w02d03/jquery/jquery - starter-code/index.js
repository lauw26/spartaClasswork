$(function(event){
	console.log("DOM is ready!")
	var count = $("#count");
	var items = $("li");
	var done = $("li.done");
	var li = $("<li>NewItem</li>")
	$("#list").prepend(li);

	var toDo = ["sleep","sleep more","sleep even more"];
	//for loop conter part, use this for each element in array and return the value
	$(toDo).each(function(index, todo){
		console.log(todo)
	})

	var html = $("#count").html("6");
	$("li").addClass("done");

	$("#count").html("10").css("color","red");

	var button = $("<button id = 'myButton'>click me</button>");
	$("body").append(button);
	$("#myButton").on("click",function(){
		console.log("click click");
	})
})

