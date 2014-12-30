require 'sinatra/base'

class FeelGoodBot < Sinatra::Base
  
  get '/' do
    "Today is going to be a wonderful day."
  end
  
end
