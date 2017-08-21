# loop do 
# 	puts "yo"
# end
# i = 0
# while i < 10 do
# 	puts "While: #{i}"
# 	i+=1
# end

# j = 0

# begin 
# 	puts "yeet #{j}"
# 	j+=1
# end while j < 10

# k = 0
# until k > 10 do
# 	puts "until #{k}"
# 	k+=1
# end 
# # .. means 0 and max range ... means 0 and not max range
# for i in 0..5
# 	puts "for #{i}"
# end

# 12.times do 
# 	puts "yo yo yo"
# end

# names = ["bob","bill","barry","brylle","boston","borris"]
# names.each do |i|
# 	puts "names #{i}"
# end

# rev_names = names.map do |name|
# 	name.reverse
# end

# puts rev_names

# names.map! do |name|
# 	name.reverse
# end

# puts names

num = [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9]

sum = num.reduce do |total, number|
	total + number
end

puts sum