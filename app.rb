require 'sinatra'

SLEEP_SECONDS = ENV.fetch('SLEEP_SECONDS') {1}.to_f

class Application < Sinatra::Base
  get '/' do
    'Hello World!'
  end

  get '/random' do
    sleep_seconds = rand * SLEEP_SECONDS
    sleep(sleep_seconds)
    sleep_seconds.to_s
  end

  get '/fixed' do
    sleep(SLEEP_SECONDS)
    SLEEP_SECONDS.to_s
  end
end
