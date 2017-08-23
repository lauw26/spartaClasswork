# linking my object blueprint for song blueprint
require_relative "songs.rb"

class SongsController < Sinatra::Base
	# array of objects to be posted on website
	$songs = []
	song1 = Song.new($songs.length,"Despacito",5,"Luis Fonsi & Daddy Yankee Featuring Justin Bieber")
	$songs.push(song1)
	song2 = Song.new($songs.length,"Wild Thoughts",4,"DJ Khaled Featuring Rihanna & Bryson Tiller")
	$songs.push(song2)
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
		@title = "Ollie is sick"
		
		

		@songs = $songs
		erb :"host/index"
	end
	
	# get "/new" do
		
	# end

	# get "/:id" do

	# end

	# post "/" do

	# end

	# put "/:id" do
		
	# end

	# delete "/:id" do

	# end

	# get "/:id/edit" do

	# end

end