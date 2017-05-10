require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
     str = params["string"]
     @reversed_str = str.reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends = ["Charlie Chaplin",
       "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
       erb :friends
  end

end
