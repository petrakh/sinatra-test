require 'sinatra'

get '/' do
  "Hello World - here I am"
end

get '/secret' do
  'This is a secret page'
end

set :session_secret, 'super secret'
