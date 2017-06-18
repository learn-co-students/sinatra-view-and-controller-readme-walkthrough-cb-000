require_relative 'config/environment'

class App < Sinatra::Base
  INPUT_STRING_SYMBOL = :string

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @reversed_string = params[INPUT_STRING_SYMBOL].reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end
