require "sinatra"
require "sinatra/reloader" if development?
require_relative "./controllers/pokedex_controller.rb"

use Rack::Reloader

# overrides the data currently stored
use Rack::MethodOverride

run PokedexController