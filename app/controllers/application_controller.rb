

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, SecureRandom.hex
  end



  get '/' do
    binding.pry
  erb :welcome 

  end

end
