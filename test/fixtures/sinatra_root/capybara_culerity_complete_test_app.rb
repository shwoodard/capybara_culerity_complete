require 'rubygems'
require 'active_support/core_ext'
require 'sinatra/base'

class CapybaraCulerityCompleteTestApp < Sinatra::Base
  set :root, File.dirname(__FILE__)

  get '/' do
    erb :index
  end

  get '/fail' do
    erb :fail
  end
end
