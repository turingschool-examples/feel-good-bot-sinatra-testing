require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require 'rack/test'

require_relative '../app/01_app'

describe FeelGoodBot do
  include Rack::Test::Methods

  def app
    FeelGoodBot.new
  end

  it "tells you how great today is going to be" do
    get '/'
    assert_equal 200, last_response.status
    assert last_response.ok?
  end
end
