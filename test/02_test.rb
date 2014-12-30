require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require 'rack/test'

require_relative '../app/02_app'

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
end
