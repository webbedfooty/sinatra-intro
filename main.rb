require "sinatra"

get '/' do
  "Hello, class!"
end

get '/hello' do
  "Hello!"
end

get '/howdy/class' do
  "Howdy, class!"
end
