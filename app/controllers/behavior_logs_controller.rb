class BehaviorLogsController < ApplicationController

    get '/behavior_logs' do 
        if logged_in?
            @logs = BehaviorLog.all
            erb :'/behavior_logs/index'    
        else
            redirect '/login'
        end 
    end 
            
        
end 