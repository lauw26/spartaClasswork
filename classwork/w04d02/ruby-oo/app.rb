# Adding your object blue print to main code to link them 
require_relative "person.rb"
# Creating a new person and assigning it to william
william = Person.new("William","male",21,1.8,70)
bob = Person.new("Bob","male",20,1.5,80)
# Assigning varibles to william object
# william.name = "William"
# william.age = 21
# william.sex = "male"
# william.height = 1.8
# william.weight = 70



puts william.describe
puts bob.describe

# # Person one
# person_one_name = "Bob";
# person_one_sex = "Male";
# person_one_age = 50;
# person_one_height = 1.86;
# person_one_weight = 85;

# # calculate BMI
# person_one_bmi = calculate_bmi person_one_height, person_one_weight

# # calculate required calories
# person_one_calories = calculate_calories(person_one_sex, person_one_height, person_one_weight, person_one_age)

# puts "#{person_one_name} has a BMI of #{person_one_bmi}. Recommend calorie intake is #{person_one_calories} calories"
