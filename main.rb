require 'rubygems'
require 'sinatra'
require 'datamapper'
require 'models/lib'

##############
# Home Page
##############
get '/' do 
  haml :home
end

load 'controllers/lib.rb'
