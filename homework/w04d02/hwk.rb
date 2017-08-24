require "sinatra"
require "sinatra/reloader" if development?

# new using get to acquire form
get "/songs/new" do
	"Make new form"	
end

# Index to show using get
get "/songs" do
	"index"	
end

# get a certain thing
get "/songs/:id" do
	"display id thing"	
end

# use post to create new thing
post "/songs" do
	"creating new thing"	
end

# edit a certain thing using id
get "/songs/:id/edit" do
	"edit certain thing"	
end

# update certain thing using put
put "/songs/:id" do
	"update certain thing with put"	
end

# update certain thing using patch
patch "/songs/:id" do
	"update certain thing with patch"	
end

# delete certain thing using delete
delete "/songs/:id" do
	"delete certain thing"	
end