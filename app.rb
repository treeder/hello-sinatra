require_relative 'bundle/bundler/setup'
require 'sinatra'
require "sinatra/json"

# Now we start the actual worker
##################################################################3

port = ENV['PORT'] || 8080
puts "STARTING SINATRA on port #{port}"
set :port, port
set :bind, '0.0.0.0'

post('/somepost') do
  p params
end

get '/ping' do
   "pong"
end

get '/' do
  json({"Hello" => "World!"})
end
