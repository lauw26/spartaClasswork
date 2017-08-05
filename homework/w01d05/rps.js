var playerWon = 0;
var compWon = 0;
var comp = ["rock","paper","scissor","lizard","spock"]
//While loop used for best of 5 so first player to get 3 round wins, wins overall
alert("Hello!")
while((playerWon<3)&&(compWon<3))
{
	var userChoice = prompt("Please enter the first letter  in lower case of your choice e.g. sp for spock");
	//Maths.random will pick a random number, Maths.floor will round the floating point number.
	var compChoice = comp[Math.floor(Math.random() * 5)];
	var result = decide(userChoice,compChoice);
	//Using the result to find outcome
	switch(result){
		case "win":
			playerWon += 1;
		break;
		case "lose":
			compWon += 1;
		break;
		case "tie"
			
		break;
		default:
	}

}

// Function used to determine winner of round

function decide(userChoice,compChoice)
{
	switch(userChoice){
		case "r":
				switch(compChoice){
					case "rock":
						return "tie"
					break;

					case "paper":
						return "lose"
					break;

					case "scissor":
						return "win"
					break;

					case "lizard":
						return "win"
					break;

					case "spock":
						return "lose"
					break;
				}
		break;
		case "p":
				switch(compChoice){
					case "rock":
						return "win"
					break;

					case "paper":
						return "tie"
					break;

					case "scissor":
						return "lose"
					break;

					case "lizard":
						return "lose"
					break;

					case "spock":
						return "win"
					break;
				}
		break;
		case "s":
				switch(compChoice){
					case "rock":
						return "lose"
					break;

					case "paper":
						return "win"
					break;

					case "scissor":
						return "tie"
					break;

					case "lizard":
						return "win"
					break;

					case "spock":
						return "lose"
					break;
				}
		break;
		case "l":
				switch(compChoice){
					case "rock":
						return "lose"
					break;

					case "paper":
						return "win"
					break;

					case "scissor":
						return "lose"
					break;

					case "lizard":
						return "tie"
					break;

					case "spock":
						return "win"
					break;
				}
		break;
		case "sp":
				switch(compChoice){
					case "rock":
						return "win"
					break;

					case "paper":
						return "lose"
					break;

					case "scissor":
						return "win"
					break;

					case "lizard":
						return "lose"
					break;

					case "spock":
						return "tie"
					break;
				}
		break;
		default: return "Invalid input"		
	}
}