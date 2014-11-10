require 'sinatra'
require "sinatra/reloader"

set :bind, '0.0.0.0'

get '/' do
	erb :index
end

get '/hello/:username' do
  @name = params["username"]
  "Hello #{@name}"
end

post '/hello' do
	@name = params["username"]
	"Hello #{@name}"
end