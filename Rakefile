ENV["SINATRA_ENV"] ||= "development"


require_relative './config/environment'
require 'sinatra/activerecord/rake'


namespace :db do 
    task :load_config do 
        require_relative "./config/environment"
         connected = ActiveRecord::Base.connection_pool.with_connection { |con| con.active? }  rescue false
        
    end 
end

