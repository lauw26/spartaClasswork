require "sinatra"
require "sinatra/reloader" if development?

# new using get to acquire form
get "/new" do
	"Make new form"	
end

# Index to show using get
get "/" do
	"Show display"	
end