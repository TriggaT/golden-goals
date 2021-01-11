class UsersController < ApplicationController

    get '/signup' do 
        erb :'users/signup'
    end 

    post '/signup' do 
        user = User.new(name: params[:name], email: params[:email], password: params[:password])

        if user.save
			redirect "users/account"
		else
			redirect "failure"
        end
    end 

    get "/login" do
        erb :'users/login'
    end

    post "/login" do
        user = User.find_by(:email => params[:email])
        
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect '/account'
        else  redirect '/failure'
        end
        
    end

    get '/logout' do
        session.clear
        redirect '/'
    end
    
    get "/failure" do
        erb :'users/failure'
    end

    

    

end 