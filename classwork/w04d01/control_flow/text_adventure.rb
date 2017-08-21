puts "You are in a race and see a split in the path"
puts "turn left or right"
direction = gets.chomp

if direction == "left"
	puts "you went left, unfortunately you slipped and fell which resorted you to a coma"
	puts "Game over!"
elsif direction == "right"
	puts "You went right and entered a forest, you see a log in front of you"
	puts "Do you attempt to climb over the log?(y/n)"
	action = gets.chomp
	if action == "y"
		puts "The log became loose when you climbed on and started rolling down with you on it"
		puts "You were squished"
		puts "Game over!"
	elsif action == "n"
		puts "You decided not to climb the rotting log and notice a hole under the log"
		puts "Do you enter the hole?(y/n)"
		enter = gets.chomp
		if enter == "y"
			puts "You enter and discover"
		elsif enter == "n"
			puts "While waiting outside a bear approaches you from behind"
			puts "You were mauled by the bear"
			puts "Game over"
		else
			puts "While waiting outside a bear approaches you from behind"
			puts "You were mauled by the bear"
			puts "Game over"
	else
		puts "You cannot do that"
		puts "You were attacked by wolves while deciding what to do"
		puts "You were eaten"
		puts "Game over"
	end 	
else
	puts "You cannot go that way, you took too long and lost the race"
	puts "Game over!"
end