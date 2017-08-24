# blueprint for pokemon objects
class Pokemon
	attr_accessor :id, :name, :type, :description

	def initialize id, name,type,description
		@id = id
		@name = name
		@type = type
		@description = description
	end
end
