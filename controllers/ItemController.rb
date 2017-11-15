class ItemController < ApplicationController

  get '/' do
    @item = Item.all
    @item.to_json
  end

  post '/' do
    'this is post'
    @item = Item.new
    @item.title = params[:title]
    @item.user_id = params[:user_id]
    @item.save

    binding.pry

    @item.to_json

  end


end
