require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require 'rack/test'

require_relative '../app/05_app'

describe FeelGoodBot do
  include Rack::Test::Methods

  def app
    FeelGoodBot.new
  end

  it "tells you how great today is going to be" do
    get '/'
    assert last_response.ok?
    assert_equal "Today is going to be a wonderful day.", last_response.body
  end
  
  it "doesn't find routes that don't exist" do
    get '/make-me-feel-sad'
    assert last_response.not_found?
    assert_equal "I don't know what to do about this.", last_response.body
  end
end
