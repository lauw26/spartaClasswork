def say_hello
	puts "Hello,world"
end

say_hello

def add_numbers num, num2
	puts num + num2
end

add_numbers 1,3

#use the default webdev2 if parameter is empty
def create_user name, course = "webdev2"
	puts "#{name} is in #{course}"
end

create_user "william"

create_user "Bob","devops"

def say_more_words *words
	puts words[2]
end

say_more_words "yo","yew","yeet","yoot"

def say what,*people
	people.each do |person|
		puts "#{what}, #{person}"
	end
end

say "hello","billy","bob","bosbov","bylle"

def add_numbers2 num1,num2
	num1 + num2
end

puts add_numbers2 1,2