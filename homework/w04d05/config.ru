require 'sinatra'
require 'pg'
# used to link champion class to cofig
require_relative './models/champion.rb'
require 'sinatra/reloader' if development?
require_relative './controllers/champions_controller.rb'

use Rack::Reloader

# overrides the data currently stored
use Rack::MethodOverride

run ChampionsController