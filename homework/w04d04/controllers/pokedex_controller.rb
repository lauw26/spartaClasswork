require_relative "pokemon.rb"
class PokedexController < Sinatra::Base
	$pokemons = []
	poke1des = "A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon."
	pokemon1 = Pokemon.new("1","Bulbasaur","Grass/Posion","Starter Pokémon from Professor Oak in Pallet Town",poke1des)
	poke2des = "When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs"
	pokemon2 = Pokemon.new("2","Ivysaur","Grass/Posion","Evolve Bulbasaur",poke2des)
	poke3des = "The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight."
	pokemon3 = Pokemon.new("3","Venusaur","Grass/Posion","Evolve Ivysaur",poke3des)
	$pokemons.push(pokemon1,pokemon2,pokemon3)
	# sets root as the parent-directory of the current file
	# goes back to root directory using ..
	set :root, File.join(File.dirname(__FILE__), "..")

	# sets the view directory correctly
	# adds veiws to root to make /views
	set :views, Proc.new{ File.join(root, "views") }	


	configure :development do
		register Sinatra::Reloader
	end

	get "/" do
		"INDEX"
		# to be used for index 
		@title = "Pokedex"
		@pokemons = $pokemons
		erb :"host/index"
	end
	#Brings form for new entry into pokedex
	get "/new" do
		@pokemon = Pokemon.new("","","","","")
		erb :"host/new"
	end
	#Shows pokemon display
	get "/:id" do
		@id = params[:id]
		@pokemon = $pokemons[@id.to_i-1]
		erb :"host/show"
	end
	#Create pokemon 
	post "/" do
		id = params[:id]
		name = params[:name]
		type = params[:type]
		location = params[:location]
		description = params[:description]
		pokemon = Pokemon.new(id,name,type,location,description)
		$pokemons.push(pokemon)
		redirect "/"
		
	end
	#Update existing pokemon
	put "/:id" do
		id = params[:id].to_i - 1
		pokemon = $pokemons[id]
		pokemon.id = params[:id]
		pokemon.name = params[:name]
		pokemon.type = params[:type]
		pokemon.location = params[:location]
		pokemon.description = params[:description]

		pokemon = $pokemons[id]

		redirect "/"
		
	end

	delete "/:id" do
		
	end
	#edit pokemon
	get "/:id/edit" do
		@id = params[:id]
		@pokemon = $pokemons[@id.to_i-1]
		erb :"host/edit"
	end
end