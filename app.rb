require 'sinatra'

class Application < Sinatra::Base
  get '/' do
    "Hello World!"
  end
end
