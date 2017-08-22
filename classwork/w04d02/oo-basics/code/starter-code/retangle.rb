class Retangle 
	attr_accessor :length, :width

	def initialize length, width
		@length = length
		@width = width
	end

	def calculate_area 
  		@length * @width
	end

	def calculate_perimeter 
  		(@length * 2) + (@width * 2)
	end

	def describe
		puts "Area: #{calculate_area } Perimeter: #{calculate_perimeter}"
	end

	def scale scalefactor
		@length *= scalefactor
		@width *= scalefactor
		describe
	end

end