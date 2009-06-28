require 'rubygems'
require 'sinatra'
require 'datamapper'
require 'haml'
require 'models/lib'
require 'net/smtp'
require 'mailfactory'

##############
# Home Page
##############
get '/' do 
  haml :home
end

load 'controllers/lib.rb'
