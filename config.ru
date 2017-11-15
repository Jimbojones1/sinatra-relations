require 'sinatra/base'

require './controllers/ApplicationController'


require './controllers/ItemController'
require './controllers/UserController'


require './models/ItemModel'
require './models/UserModel'

map('/') {run ApplicationController}
map('/items') {run ItemController}
map('/users') {run UserController}
