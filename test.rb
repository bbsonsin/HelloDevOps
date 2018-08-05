require './app.rb'
require 'minitest/autorun'
require 'rack/test'

class MyAppTest < Minitest::Test
    include Rack::Test::Methods

    def app
        HelloDevOps
    end

    def test_my_default
        get '/'
        assert_equal 'Hello, DevOps World!', last_response.body
    end

    def test_with_params
        get '/Frank'
        assert_equal 'Hello, Frank Sinatra!', last_response.body
    end
end
