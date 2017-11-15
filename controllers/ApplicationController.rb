class ApplicationController < Sinatra::Base

  # enable  :sessions

  require 'bundler'
  Bundler.require

  require './config/environments'

  # use Rack::Session::Cookie, :key => 'rack.session', :path => '/', :secret => 'some-random-string'


  # register Sinatra::CrossOrigin

  # ActiveRecord::Base.establish_connection(
  #   :adapter => 'postgresql',
  #   :database => 'item'
  # )

  set :views, File.expand_path('../views', File.dirname(__FILE__))
  # configure do
  #   enable :cross_origin
  # end

  # # set :allow_origin, :any
  # set :allow_credentials, true
  # set :allow_methods, [:get, :post, :options]

  # use Rack::MethodOverride

  # set :method_override, true

  # before do
  #   headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  #   headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
  #   headers['Access-Control-Allow-Headers'] = 'accept, authorization, origin'
  #   headers['Access-Control-Allow-Credentials'] = 'true'

  # end

  not_found do
    "Not found"
  end
end
