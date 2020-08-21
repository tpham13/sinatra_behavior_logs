ENV['SINATRA_ENV'] ||= "development"

api_key = ENV['MY_SECRET']
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require_relative '../secrets'
require './app/controllers/application_controller'
require_all 'app'
