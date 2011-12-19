require 'sinatra'
require 'haml'

get '/' do
  "test"
end

get '/about' do
  "about me"
end

get '/people/:name' do
  "entered name: #{params[:name]}"
end

get '/people/*' do
  "default people endpoint"
end

get '/form/:format' do
  haml :form if params[:format] === 'haml'
end

post '/form' do
  "entered data: #{params[:message]}"
end


get '/form-encrypted' do
  erb :form-encrypted
end

post '/form-encrypted' do
  params[:secret].reverse
end

not_found do
  status 404
  'not found'
end
