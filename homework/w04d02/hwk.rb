require "sinatra"
require "sinatra/reloader" if development?

# new using get to acquire form
get "/new" do
	"Make new form"	
end

# Index to show using get
get "/" do
	"index"	
end

# Show to get a certain element
get "/:id" do
	"display id element"	
end