
class BehaviorLogsController < ApplicationController
    require 'pry'
    get '/behavior_logs' do 
        if logged_in?
            @logs = current_user.behavior_logs
            
            erb :'/behavior_logs/index'    
        else
            redirect '/login'
        end 
    end 

    get '/behavior_logs/new' do 
        erb :'behavior_logs/new'
    end 

    post '/behavior_logs/new' do 
        log = current_user.behavior_logs.build(params)
        log.save
        redirect '/behavior_logs' #could use erb to index here but you won't see the new behavior log
        
    end 
    
    get '/behavior_logs/:id' do 
        @post.user == current_user
        erb :'/behavior_logs/show'
    end 
          
        
end 