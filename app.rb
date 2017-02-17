require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params[:string].to_s
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfield"]
    erb :friends
  end

end
