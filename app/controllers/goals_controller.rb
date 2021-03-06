require 'rack-flash'

class GoalsController < ApplicationController
  use Rack::Flash
 
  get '/goals' do
    erb :'goals/index'
  end

  get '/goals/new' do
    erb :'/goals/new'
  end

  post '/goals' do
    @goal = Goal.create(params)
    current_user.goals << @goal
    if @goal.save
      flash[:message] = "You have successfully created a goal! Remembering your goals brings you one step closer to completing them."
      redirect("/goals/#{@goal.slug}")
    else flash[:message] = "There was something with your goal information. Please make sure it has a title, status, motivation, description, and an estimated completion date."
      redirect "/goals/new"
    end

  end

  get "/goals/failure" do 
    erb :'goals/failure'
  end 

  get '/goalss' do 
    @goals = Goal.all
   
    erb :'goals/all'
  end 


  get '/goals/:slug' do
    @goal = Goal.find_by_slug(params[:slug])
    if @goal && @goal.user_id == session["user_id"]
        erb :'goals/show'
    else redirect "/goals/failure"
    end
  end 

  
  get '/goals/:slug/edit' do
    @goal = Goal.find_by_slug(params[:slug])
    if @goal && @goal.user_id == session["user_id"]
        erb :'goals/edit'
    else redirect "/goals/failure"
    end 
  end 


  patch '/goals/:slug' do
    @goal = Goal.find_by_slug(params[:slug])
    @goal.update(title: params[:title], status: params[:status], motivation: params[:motivation], description: params[:description], estimated_completion_date: params[:estimated_completion_date])
    @goal.save

    flash[:message] = "You successfully updated your goal!"
    redirect("/goals/#{@goal.slug}")
  end

  delete '/goals/:slug' do 
    @goal = Goal.find_by_slug(params[:slug])
    @goal.delete
    
    redirect '/goals'
  end 

  

end 


