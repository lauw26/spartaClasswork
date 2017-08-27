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
  		# "INDEX"
  		@champions = Champion.all
  		# Takes user to index
  		erb :'posts/index'
  	end
  	# Retreieves a form for user to add entry into db
  	get '/new'  do
  		# "NEW"
  		@champion = Champion.new
  		@champion.id = ""
  		@champion.name = ""
  		@champion.position = ""
  		@champion.cost = 
  		@champion.passive = ""
  		@champion.ability1 = ""
  		@champion.ability2 = ""
  		@champion.ability3 = ""
  		@champion.ultimate = ""
  		@champion.lore = ""
  		#Take user to form for new entry
  		erb :"posts/new"
  	end
  	# Shows the content of a specific object in db
  	get '/:id' do
  		# "SHOW #{params[:id]}"
  		id = params[:id].to_i
  		# make a single post object available in the show url
  		@champion = Champion.find id
  		erb :'posts/show'
  	end 
  	# Takes user input from form and adds data as new entry
  	post '/' do
  		# "CREATE"
  		champion = Champion.new
  		champion.name = params[:name]
  		champion.position = params[:position]
  		champion.cost = params[:cost].to_i
  		champion.passive = params[:passive]
  		champion.ability1 = params[:ability1]
  		champion.ability2 = params[:ability2]
  		champion.ability3 = params[:ability3]
  		champion.ultimate = params[:ultimate]
  		# Allows large text with ' to be saved by replacing it with two ''
  		lore = params[:lore]
  		if lore.include? "'"
   			lore.gsub! "'", "''"
		end
  		champion.lore = lore

  		champion.save

  		redirect "/"

  	end
  	# Updating exisiting data by setting them to new data then saving it and redirecting  
  	put '/:id'  do
  		# "UPDATE #{params[:id]}"
  		id = params[:id].to_i
	    champion = Champion.find id 
	    champion.name = params[:name]
  		champion.position = params[:position]
  		champion.cost = params[:cost].to_i
  		champion.passive = params[:passive]
  		champion.ability1 = params[:ability1]
  		champion.ability2 = params[:ability2]
  		champion.ability3 = params[:ability3]
  		champion.ultimate = params[:ultimate]
  		# Allows large text with ' to be saved by replacing it with two ''
  		lore = params[:lore]
  		if lore.include? "'"
   			lore.gsub! "'", "''"
		end
  		champion.lore = lore

  		champion.save

	    redirect "/"
  	end
  	# Deletes a entry in db using entry id
  	delete '/:id'  do
  		"DELETE #{params[:id]}"
  	end
  	# Retrieves form along with specific object data on it for user to make changes
  	get '/:id/edit'  do
  		# "EDIT #{params[:id]}"
  		id = params[:id].to_i
    	# make a single post object available in the template
    	@champion = Champion.find id
    	# Display edit url page
    	erb :'posts/edit'
  	end


end