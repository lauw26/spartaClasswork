// 1.
// Get all elements with the class 'like'. Store them in a veriable called 'q1'
var $q1 = $(".like");
console.log($q1);

// 2.
// Using the variable from $q1, apply the class 'important' to each of the 'like' elements
$($q1).each(function(index,stuff){
	$(stuff).addClass("important");
});
console.log($q1);

// 3.
// Get all elements with the class 'article-title'. Store them in a veriable called 'q3'
// Remove the second one from the dom.
var $q3 = $(".article-title");
console.log($q3);
$q3.splice(1,1);
console.log($q3);

// 4.
// Find the element with the ID of masthead. Store them in a variable called q4. Remove the class 'border-heavy'
var $q4 = $("#masthead");
console.log($q4);
$q4.removeClass("border-heavy"); 
console.log($q4);
// 5.
// Find all LI elements inside of the nav. Store them in a variable called $q5.
// If they have the class 'green', add the class 'bold'
var $q5 = $("nav li.green");

$q5.addClass("bold");

console.log($q5);
// 6.
// Find the element with the ID of 'main-heading', store it in a variable called q6.
// Change the element text to read 'This is the new page heading'
var $q6 = $("#main-heading"); 
$q6.html("This is the new page heading");
// 7.
// Create the element "<h4>I Am A New Element</h4>". Apeend it to the 'main' element.
$("main").append("<h4>I Am A New Element</h4>");