var playerWon = 0;
var compWon = 0;
var comp = ["rock","paper","scissor","lizard","spock"]
var replay;
//While loop used for best of 5 so first player to get 3 round wins, wins overall
alert("Welcome to the best out of 5 rock paper, paper, scissor, lizard, spock game")
do
	{
	while((playerWon<3)&&(compWon<3))
	{
		var userChoice = prompt("Please enter your choice in lower case e.g. rock");
		//Maths.random will pick a random number, Maths.floor will round the floating point number.
		var compChoice = comp[Math.floor(Math.random() * 5)];
		var result = decide(userChoice,compChoice);
		//Using the result to find outcome
		switch(result){
			case "win":
				playerWon += 1;
				alert("You win!\n" + userChoice + " beats " + compChoice + "\nCurrent score player: " + playerWon + " computer: " + compWon);
			break;
			case "lose":
				compWon += 1;
				alert("You lose!\n" + userChoice + " loses against " + compChoice + "\nCurrent score player: " + playerWon + " computer: " + compWon);
			break;
			case "tie":
				alert("Tie!\n" + userChoice + " ties against " + compChoice + "\nCurrent score player: " + playerWon + " computer: " + compWon);
			break;
			default: alert(result);
		}
	}
	//Determine the overall winner of the 5 matches
	if(playerWon>compWon){
		alert("Congratulations you win!\n Final score player: "+ playerWon + " computer: " + compWon);
	}else{
		alert("Better luck next time You lost!\n Final score player: "+ playerWon + " computer: " + compWon);
	}

	replay = prompt("Play again? y/n");
	playerWon = 0;
	compWon = 0;
}while(replay == "y")
// Function used to determine winner of round

function decide(userChoice,compChoice)
{
	switch(userChoice){
		case "rock":
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
		case "paper":
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
		case "scissor":
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
		case "lizard":
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
		case "spock":
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