require 'sinatra/base'

class FeelGoodBot < Sinatra::Base
  
  get '/' do
    "Today is going to be a wonderful day."
  end
  
  not_found do
    "I don't know what to do about this."
  end
  
  get '/hello' do
    if params[:name]
      "Hello, #{params[:name]}. It's wonderful to have you in the world."
    else
      "Hello. It's wonderful to have you in the world."
    end
  end
  
end