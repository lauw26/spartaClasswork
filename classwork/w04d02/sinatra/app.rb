require 'sinatra'
# If development run reloader
require 'sinatra/reloader' if development?

# setting up server
get '/books' do

	"INDEX"

end

post '/books' do

	"CREATE"

end

put '/books/:id' do
	"UPDATE TAKE AND REPLACE"
end

patch '/books/:id' do
	"UPDATE TAKE AND MODIFY"
end

delete '/books/:id' do
	"DELETE"
end