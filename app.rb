require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @words = params[:user_input]
    erb :user_input
  end

  post '/piglatinize' do
    converted_word = PigLatinizer.new
    @piglatin = converted_word.to_pig_latin(params[:user_phrase])
    erb :results
  end
end
