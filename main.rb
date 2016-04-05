require "sinatra"
require "pry"

get '/' do
  # "Hello!" # => Before we switched to ERB
  # render views/root_path.erb
  erb :root_path
end

get '/hello/:name' do
  @name = params['name']
  erb :hello
end

get '/wilhelm-scream/:num' do
  @num = params['num'].to_i
  erb :wilhelm_scream
end
