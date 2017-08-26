class 	ChampionsController < Sinatra::Base
	# sets root as the parent-directory of the current file
  	set :root, File.join(File.dirname(__FILE__), '..')
  	# sets the view directory correctly
  	set :views, Proc.new { File.join(root, "views") }
  	
  	configure :development do
    register Sinatra::Reloader
  	end
  	# Home/index showing the contents of db
  	get '/' do
  		"INDEX"
  	end
  	# Retreieves a form for user to add entry into db
  	get '/new'  do
  		"NEW"
  	end
  	# Shows the content of a specific object in db
  	get '/:id' do
  		"SHOW"
  	end 
  	# Takes user input from form and adds data as new entry
  	post '/' do
  		"CREATE"
  	end

end