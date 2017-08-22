class Person
	#accessor can both get and set variables, reader can only get value, writer can only set values.
	attr_accessor :name, :sex, :age, :weight, :height

	#Contructor method when object is created this will run 
	def initialize(name,sex,age,height,weight)
		#Applying parameters to attr 
		p "I'm Alive!"
		@name = name
		@sex = sex
		@age = age
		@weight = weight
		@height = height
	end

	def calculate_bmi 
  		(@weight / (@height  ** 2)).to_i
	end

	def calculate_calories 
  		if @sex == "Male"
    		bmr = 66.47 + (13.7 * @weight) + (5 * @height * 100) - (6.8 * @age)
  		else
    		bmr = 655.1 + (9.6 * @weight) + (1.8 * @height * 100) - (4.7 * @age)
  		end
  		bmr.to_i
	end

	def describe
		puts "#{@name} has a BMI of #{calculate_bmi}. Recommended calorie #{calculate_calories}"
	end

end