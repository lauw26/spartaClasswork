require "sinatra"
require "sinatra/reloader" if development?
require_relative "./controllers/songs_controller.rb"

run SongsController