# blueprint for pokemon objects
class Pokemon
	attr_accessor :id, :index, :name, :type, :location, :description

	def initialize id, index, name,type,location,description
		@id = id
		@index = index
		@name = name
		@type = type
		@location = location
		@description = description
	end
end
