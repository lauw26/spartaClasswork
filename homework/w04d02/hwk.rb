require "sinatra"
require "sinatra/reloader" if development?

# new using get

get "/new" do
	"Make new form"	
end
