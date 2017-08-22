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

# get a certain thing
get "/:id" do
	"display id thing"	
end

# use post to create new thing
post "/" do
	"creating new thing"	
end

# edit a certain thing using id
get "/:id/edit" do
	"edit certain thing"	
end