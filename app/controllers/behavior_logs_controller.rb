class BehaviorLogsController < ApplicationController

    get '/behavior_logs' do 
        if logged_in?
            @logs = current_user.behavior_logs
            
            erb :'/behavior_logs/index'    
        else
            redirect '/login'
        end 
    end 

    get '/behavior_logs/:id' do 
        @log = @logs.find_by(:id)
        erb :'/behavior_logs/show'
    end 
            
        
end 