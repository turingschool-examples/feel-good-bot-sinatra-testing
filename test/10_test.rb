require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require 'rack/test'
require 'nokogiri'

require_relative '../app/10_app'

describe FeelGoodBot do
  include Rack::Test::Methods

  def app
    FeelGoodBot.new
  end
  
  it "has a heading" do
    get '/'
    html = Nokogiri::HTML(last_response.body)
    
    assert last_response.ok?
    assert_equal "Feel Good!", html.css('h1').text
  end

  it "tells you look nice today" do
    get '/'
    html = Nokogiri::HTML(last_response.body)
    
    assert last_response.ok?
    assert_equal "You look nice today!", html.css('.message').text
  end
  
  it "renders a page with a big HELLO!" do
    get '/hello'
    html = Nokogiri::HTML(last_response.body)
    
    assert last_response.ok?
    assert_equal "HELLO!", html.css('h1').text
  end
  
  it "renders a page with a happy greeting telling you how wonderful it is to have you" do
    get '/hello'
    html = Nokogiri::HTML(last_response.body)
    
    assert last_response.ok?
    assert_equal "Hello. It's wonderful to have you in the world.", html.css('.greeting').text
  end
  
end
