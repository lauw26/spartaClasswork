var playerWon = 0;
var compWon = 0;
var comp = ["r","p","s","l","sp"]
//While loop used for best of 5 so first player to get 3 round wins, wins overall
alert("Hello!")
while((playerWon<3)&&(compWon<3))
{
	var userChoice = prompt("Please enter the first letter  in lower case of your choice e.g. sp for spock");
	//Maths.random will pick a random number, Maths.floor will round the floating point number.
	var compChoice = comp[Math.floor(Math.random() * 5)];

	alert(decide(userChoice,compChoice));

	playerWon +=3;

}

// Function used to determine winner of round

function decide(userChoice,compChoice)
{
	switch(userChoice){

		case "r":
				switch(compChoice){

					case "r":
						return "tie"
					break;

					case "p":
						return "lose"
					break;

					case "s":
						return "win"
					break;

					case "l":
						return "win"
					break;

					case "sp":
						return "lose"
					break;


				}
		break;



	}
}