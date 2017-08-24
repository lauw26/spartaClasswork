require_relative "pokemon.rb"
class PokedexController < Sinatra::Base
	$pokemons = []
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
	end
	
	get "/new" do
		
	end

	get "/:id" do
		

	end

	post "/" do

		
	end

	put "/:id" do
		
	end

	delete "/:id" do
		
	end

	get "/:id/edit" do

	end
end