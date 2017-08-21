$num1 = 0
$num2 = 0
$distance = 0
$fuel_eff = 0
$cost = 0
$speed = 0
$continue = true
def user_input
	$num1 = gets.chomp.to_f
	$num2 = gets.chomp.to_f
end
def add_num num01, num02
	puts num01+num02
end
def sub_num num01, num02
	puts num01-num02
end
def multi_num num01, num02
	puts num01*num02
end
def div_num num01, num02
	puts num01/num02
end
def power num01, num02
	puts num01**num02
end
def square num01
	puts Math.sqrt(num01)
end
def basic_calc 
	puts "Enter your 2 nums"
	user_input
	puts "Enter a,b,c,d for add,subtract,multiple and divide"
	which = gets.chomp
	case which
		when "a"
			add_num $num1, $num2
		when "b"
			sub_num $num1, $num2
		when "c"
			multi_num $num1, $num2
		when "d"
			div_num $num1, $num2
		else
			puts "Invalid input"
	end	
end
def advanced_calc
	puts "Enter a,b for power or square root"
	which = gets.chomp
	if which == "a"
		puts "Enter your 2 nums"
		user_input
		power $num1, $num2
	elsif which == "b"
		puts "Enter number to square"
		$num1 = gets.chomp.to_i
		square $num1
	else
		puts "Invalid input"
	end	
end
def bmi_calc
	puts "Enter your weight in kg followed by your heigh in meters"
	user_input
	bmi = $num1/($num2**2) 
	puts "Your BMI is #{bmi}"
	bmi_result bmi
end
def bmi_result value
	if value > 0 && value <= 18.5
		puts "Gain weight!"
	elsif value > 18.5 && value <= 24.9
		puts "Healthy!"
	elsif value > 24.9 && value <= 29.9
		puts "Loose weight"
	else
		puts "Loose lots of weight"
	end	
end
def time_calc
	$distance/$speed
end
def fuel_check fuel_amount
	if(fuel_amount<4)
		return 4
	else
		return fuel_amount*$cost
	end
end
def cost_calc
	fuel = $distance/$fuel_eff
	if $speed > 60
		fuel -= ($speed - 60)*2
	end

	fuel_cost = fuel_check fuel
	return fuel_cost
end
def trip_calc
	puts "Enter distance of journey in miles"
	$distance = gets.chomp.to_f
	puts "Enter fuel efficiency in miles per gallon"
	$fuel_eff = gets.chomp.to_f
	puts "Enter cost per gallon in pounds"
	$cost = gets.chomp.to_f
	puts "Enter average speed in miles per hour"
	$speed = gets.chomp.to_f
	time = time_calc
	cost = cost_calc

	puts "Your trip will take #{time} hours and cost #{cost} pounds"

end

while $continue 
	puts "1 for basic calc"
	puts "2 for advanced calc"
	puts "3 for BMI calc"
	puts "4 for trip calc"
	puts "5 to exit"

	choice = gets.chomp

	case choice
		when "1"
			basic_calc
		when "2"
			advanced_calc
		when "3"
			bmi_calc
		when "4"
			trip_calc
		when "5"
			$continue = false
		else
			puts "Invalid input"	
	end	
end