require "sinatra"
require "pry"

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
  binding.pry
  "#{params['word']} has #{params['word'].length} letters"
end

# /letter-count-queries?word=ruby
get '/letter-count-queries' do
  binding.pry
  if params['word']
    "#{params['word']} has #{params['word'].length} letters"
  else
    "You gotta give us a word."
  end
end



