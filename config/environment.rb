require 'bundler'
Bundler.require

require './app/models/item'

configure :development do
  set :database, "sqlite3:db/database.db"
end
