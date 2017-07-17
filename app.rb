require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World - here I am"
end

get '/secret' do
  'This is a secret page'
end

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @last_name = params[:last_name]
  erb(:index)
end
