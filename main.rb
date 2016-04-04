require "sinatra"

get '/' do
  "Hello, class!"
end

get '/hello' do
  "Hello!"
end

get '/hello/:name' do
  "Hello, #{params['name'].capitalize}"
end

get '/hello/:name/:greeting' do
  "#{params['greeting']} #{params['name']}"
end

get '/letter-count/:word' do
  "#{params['word']} has #{params['word'].length} letters"
end


