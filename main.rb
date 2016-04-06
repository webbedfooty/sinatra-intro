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
get "/even-or-odd/:number" do
  @number = params['number']
  @which = ""
  if params['number'].to_i.even?
    @which = " is even."
  else
    @which = " is odd."
  end
  erb :even_or_odd_2
end

# works for both
# localhost:4567/even-or-odd/73
# I should see:
# 73 is odd.

#################################################
# 3. Triangles
#(Hint: a triangle is a good triangle if each side is shorter than the sum
#       of the lengths of the other two sides, and not good otherwise)
# I want to know if a triangle is good. When I visit
# localhost:4567/triangle/3/4/5
# I should see:
# A triangle with lengths of 3, 4, and 5 is good.
#
# localhost:4567/triangle/17/2/4
# I should see:
# A triangle with lengths of 17, 2, and 4 is not good.

get "/triangle/:a/:b/:c" do
  @a = params['a'].to_i
  @b = params['b'].to_i
  @c = params['c'].to_i
  @which = ""
  if (@a + @b > @c) && (@a + @c > @b) && (@b + @c > @a)
    @which = " good."
  else
    @which = " not good."
  end
  erb :triangle
end
