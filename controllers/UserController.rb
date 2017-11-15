class UserController < ApplicationController

  post '/' do

    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]
    @user.save

    @user.to_json


  end

  post '/login' do
    @pw = params[:password]
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(@pw)

        'hey your logged in'

    end

  end




end
