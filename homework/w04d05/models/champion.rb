class Champion
	attr_accessor :id, :name, :position, :cost, :passive, :ability1, :ability2, :ability3, :ultimate, :lore
	#use to connect class with sql database
	def self.open_connection
		PG.connect(dbname: "champions")
	end
	#make data retrieved into an object
	def self.hydrate data
		# make new champ object and using db data to seed it
		champion = Champion.new
		champion.id = data['id']
		champion.name = data['name']
		champion.position = data['position']
		champion.cost = data['cost']
		champion.passive = data['passive']
		champion.ability1 = data['ability1']
		champion.ability2 = data['ability2']
		champion.ability3 = data['ability3']
		champion.ultimate = data['ultimate']
		champion.lore = data['lore']
		# return object seeded from db
		champion
	end

	#Index method to connect to db
	def self.all
		conn = self.open_connection
		# grab everything in db and order them by name
		sql = "SELECT id, name, position, cost, passive, ability1, ability2, ability3, ultimate, lore FROM champion ORDER BY name" 
		results = conn.exec(sql)

		champions = results.map do |result|
			self.hydrate result
		end

		champions
	end
end