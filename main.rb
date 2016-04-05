require "sinatra"
require "pry"

# test
get '/' do
  # "Hello!" # => Before we switched to ERB
  # render views/root_path.erb
  erb :root_path
end

###########################################

# 1A. Shouted Greeting
#
# localhost:4567/shouted-greeting/Andrew
# I should see:
# HELLO, ANDREW!
get '/shouted-greeting/:name' do
  @name = params['name']
  erb :shouted_greeting_1a
end

# localhost:4567/shouted-greeting/howdy/andrew
# I should see:
# HOWDY, ANDREW!
get "/shouted-greeting/howdy/:name" do
    @name = params['name']
  erb :shouted_howdy_1a
end

#################################################
# 1B. Shouted Greeting (queries)
#
# localhost:4567/shouted-greeting-a?name=andrew
# I should see:
# HELLO, ANDREW!
get "/shouted-greeting-a" do
  @name = params['name']
  erb :shouted_hello_1b
end

# localhost:4567/shouted-greeting-b?name=andrew&greeting=howdy
# I should see:
# HOWDY, ANDREW!
get "/shouted-greeting-b" do
  @greeting = params['greeting']
  @name = params['name']
  erb :shouted_howdy_1b
end
#################################################

# 2A. Even or Odd
# localhost:4567/even-or-odd/2
# I should see:
# 2 is even.


# localhost:4567/even-or-odd/73
# I should see:
# 73 is odd.
