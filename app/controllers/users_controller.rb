class UsersController < ApplicationController

    get '/signup' do 
        erb :'/users/signup'
    end 

    post '/signup' do
        if params[:name].empty? || params[:email].empty?
          @error = "All fields must be completed"
          erb :'users/signup'
        else 
          @user = User.create(params)
          session[:user_id] = @user.id
          erb :'/users/welcome'  
        end 
      end 
end 