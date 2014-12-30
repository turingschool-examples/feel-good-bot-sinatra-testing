require 'sinatra/base'

class FeelGoodBot < Sinatra::Base
  
  get '/' do
    @message = "You look nice today!"
    erb :index
  end
  
  not_found do
    "I don't know what to do about this."
  end
  
  get '/hello' do
    if params[:name]
      "Hello, #{params[:name]}. It's wonderful to have you in the world."
    else
      erb :hello
    end
  end

  get '/hello/:name' do
    redirect to("/hello?name=#{params[:name]}")
  end
  
  post '/complement' do
    "Thanks for saying, \"#{params[:complement]}\" I really appreciate it."
  end
  
end