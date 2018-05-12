require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  # manipulate the string by getting it from the params hash and calling the .reverse method on it
  # Instance variables allow us to bypass scope between the various methods in a class
  # Creating an instance variable in a controller method (route) lets the contents become 'visible' to the erb file to which it renders
  # Instead of creating a local variable reversed_string, change it to an instance variable @reversed_string
  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse

    erb :reversed
  end


  get '/friends' do
    # inside the route, assign an array (rather than a string) to an instance variable, called @friends
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    # render the friends.erb page
    erb :friends
  end
end

=begin

  In ERB templates,
  <%= contents %> will display the evaluated expression within the opening and closing tags.
  <% contents %> will evaluate the contents of the expression, but will not display them.

=end
