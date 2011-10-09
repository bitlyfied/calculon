require 'sinatra/base'
require 'rest-client'
require 'slim'

class MyRobot < Sinatra::Base
  set :port => 80

  post '/' do
    @total = RestClient.post 'http://localhost:4567/eve', {:exp => params[:exp]}
    redirect '/'
  end

  get '/' do
    @total = RestClient.get 'http://localhost:4567/'
    slim :index
  end

  run!
end
