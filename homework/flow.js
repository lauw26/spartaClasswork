var comp = ["rock","paper","scissor","lizard","spock"];
var playerScore = 0;
var compScore = 0;
function compare(user,comp){
	if((user == "rock" && (comp =="scissor"||comp=="lizard"))||(user == "paper" && (comp =="rock"||comp=="spock"))||(user == "scissor" && (comp =="lizard"||comp=="paper"))||(user == "lizard" && (comp =="spock"||comp=="paper"))||(user == "spock" && (comp =="scissor"||comp=="rock"))){
		playerScore += 1;
		alert("You win!\nCurrent score player: " + playerScore + " computer: " + compScore);
	}else if((user == "rock" && (comp =="paper"||comp=="spock"))||(user == "paper" && (comp =="scissor"||comp=="lizard"))||(user == "scissor" && (comp =="rock"||comp=="spock"))||(user == "lizard" && (comp =="scissor"||comp=="rock"))||(user == "spock" && (comp =="paper"||comp=="lizard"))){
		compScore += 1;
		alert("You lose!\nCurrent score player: " + playerScore + " computer: " + compScore);
	}else if(user == comp){
		alert("Tie!\nCurrent score player: " + playerScore + " computer: " + compScore)
	}else{
		alert("Invalid input!");
	}
}
function scoreComparison(userScore,compScore){
	if(userScore>compScore){
		alert("You win! Congratulations\nFinal score\nplayer: " + playerScore + " computer: " + compScore);
	}else{
		alert("You lost! Better luck next time\nFinal score\nplayer: " + playerScore + " computer: " + compScore);
	}
}
function playAgain(){
	return prompt("Type y to play again")
}
function run(){
	do{
		alert("Welcome to rock, paper, scissor, lizard, spock");
		while(playerScore<3 && compScore<3)
		{
			compare(prompt("Enter your choice e.g rock"),comp[Math.floor(Math.random() * 5)]);
		}
		scoreComparison(playerScore,compScore)
		playerScore = 0;
		compScore = 0;
	}while(playAgain()=="y")
}
run();