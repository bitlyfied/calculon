require 'sinatra/base'
require '../calculon/calculon'

class CalculonService < Sinatra::Base

  def initialize
    super
    @calculon = Calculon.new
  end

  post '/eve' do
    @calculon.eve(params[:exp]).to_s
  end

  get '/' do
    @calculon.total.to_s
  end

  run!
end
