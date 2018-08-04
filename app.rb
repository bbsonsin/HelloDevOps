require 'sinatra'

class HelloDevOps < Sinatra::Base
    get '/' do
        "Hello, DevOps World!"
    end

    get '/:name' do
        "Hello, #{params[:name]}!"
    end
end
