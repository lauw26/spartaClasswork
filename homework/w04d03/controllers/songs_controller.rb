class SongsController < Sinatra::Base
	# array of objects to be posted on website
	# $posts = [
	# 	{
	# 	id: 0,
	# 	title: "Post 1",
	# 	body: "This is is the first post"
	# 	},
	# 	{
	# 	id: 1,
	# 	title: "Post 2",
	# 	body: "This is is the second post"
	# 	},
	# 	{
	# 	id: 2,
	# 	title: "Post 3",
	# 	body: "This is is the third post"
	# 	}
	# ]
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
		erb :"host/index"
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