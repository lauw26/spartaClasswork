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
	#Selecting only 1 item and returning it then seeding as a object
	def self.find id
		conn = self.open_connection
		sql = "SELECT id, name, position, cost, passive, ability1, ability2, ability3, ultimate, lore FROM champion WHERE id = #{id} LIMIT 1"
		champions = conn.exec(sql)
		champion = self.hydrate champions[0]

		champion

	end
	# Saves new entry and inputs to database since it static and a instance has been created have to use (instance name).connect rather than self.connect
	def save 
		conn = Champion.open_connection
		#if there is no id then make new entry
		if(!self.id)
			sql = "INSERT INTO champion (name, position, cost, passive, ability1, ability2, ability3, ultimate, lore ) VALUES ('#{self.name}', '#{self.position}', '#{self.cost}', '#{self.passive}', '#{self.ability1}', '#{self.ability2}', '#{self.ability3}', '#{self.ultimate}', '#{self.lore}')"
		else
			# updates using id if id exist
			sql = "UPDATE champion SET name='#{self.name}', position='#{self.position}',cost='#{self.cost}',passive='#{self.passive}',ability1='#{self.ability1}',ability2='#{self.ability2}',ability3='#{self.ability3}',ultimate='#{self.ultimate}',lore='#{self.lore}' WHERE id=#{self.id}"
		end
		conn.exec(sql)
	end
	# Destroy or delete row based on id 
	def self.destroy id
		conn = self.open_connection
		sql = "DELETE FROM post WHERE id='#{id}'"
		conn.exec(sql)
	end
end