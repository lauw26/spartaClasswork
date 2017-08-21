# return an array of reversed words
def reverse_array_of_strings words
	 words.map! do |word|
	 	word.reverse 
	 end
end

# return all the even numbers less than the given number
def even_numbers_less_than num
	(0...num).reduce [] do |evens,i|

		if (i % 2).even?
			evens.push i
		end
		evens
	end
end

# return the average of all numbers in an array
def average numbers
	(0...numbers).reduce [] do |average,i|

		average + (i/numbers)
		average
	end
	
end

