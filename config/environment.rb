ENV['SINATRA_ENV'] ||= "development"
ENV['RAILS_ENV'] = ENV["SINATRA_ENV"] 

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'sinatra'
require 'sinatra/activerecord'

require './app/controllers/application_controller'


require_all 'app'

set :database, {adapter: "sqlite3", database: "db/#{ENV['SINATRA_ENV']}.sqlite"}





