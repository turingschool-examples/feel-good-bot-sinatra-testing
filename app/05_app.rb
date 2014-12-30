require 'sinatra/base'

class FeelGoodBot < Sinatra::Base
  
  get '/' do
    "Today is going to be a wonderful day."
  end
  
  not_found do
    "I don't know what to do about this."
  end
  
end