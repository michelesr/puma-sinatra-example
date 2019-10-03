require 'sinatra'
require 'pg'

SLEEP_SECONDS = ENV.fetch('SLEEP_SECONDS') {1}.to_f

class Application < Sinatra::Base
  get '/' do
    'Hello World!'
  end

  get '/pg' do
    con = PG.connect(
      :dbname ENV['DB_NAME'],
      :user ENV['DB_USER'],
      :password ENV['DB_PASSWORD']
    )

    rs = con.exec('SELECT VERSION()')
    rs.getvalue(0, 0)
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
