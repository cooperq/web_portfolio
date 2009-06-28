DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/models/cooperq.db")
require 'models/post'
require 'models/site'
require 'models/project'
