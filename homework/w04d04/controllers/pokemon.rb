# blueprint for pokemon objects
class Pokemon
	attr_accessor :id, :name, :type, :location, :description

	def initialize id, name,type,location,description
		@id = id
		@name = name
		@type = type
		@location = location
		@description = description
	end
end
