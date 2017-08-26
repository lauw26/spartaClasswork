class Champion
	attr_accessor :id, :name, :position, :cost, :passive, :ability1, :ability2, :ability3, :ultimate, :lore
	#use to connect class with sql database
	def self.open_connection
		PG.connect(dbname: "champions")
	end
	#make data retrieved into an object
	def self.hydrate data
		champion = Champion.new
		champion.id = data['id']
		champion.name = data['name']
		champion.position = data['position']
		champion.cost = data['cost']
		champion.passive = data['passive']
		champion.ability1 = data['ability1']
		champion.ability2 = data['ability2']
		champion.ability3 = data['ability3']

		post
	end
end