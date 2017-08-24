
class Song
	#accessor can both get and set variables, reader can only get value, writer can only set values.
	attr_accessor :id, :name, :rating, :artist

	#Contructor method when object is created this will run 
	def initialize(id,name,rating,artist)
		#Applying parameters to attr 
		@id = id
		@name = name
		@rating = rating
		@artist = artist
	end


end