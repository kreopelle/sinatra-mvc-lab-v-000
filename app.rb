require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    raise params.inspect
    pig_latin = PigLatinizer.new
    @text = pig_latin.piglatinize(params[:user_input])

    erb :piglatinize
  end

end
