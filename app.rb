require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @text = params[:user_phrase]

    erb :pig_latinized
  end

end
