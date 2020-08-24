
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

    post '/behavior_logs' do 
        @log = current_user.behavior_logs.build(params)
        if @log.save
            redirect '/behavior_logs' #could use erb to index here but you won't see the new behavior log
        else 
            flash[:error] = "Please complete all required fields!"
            erb :'behavior_logs/new'
        end
        
    end 

    get '/behavior_logs/:id/edit' do         #why when I use '/behavior_logs/:id/edit' it won't work? (plural logs)
        get_behavior_log
        if @log.user == current_user
            erb :'behavior_logs/edit'
        else
            redirect '/behavior_logs'
        end 
    end 


    patch '/behavior_logs/:id' do 
        get_behavior_log
        if @log.user == current_user #authorization check
            if @log.update(child_name: params[:child_name], child_age: params[:child_age], behavior_description: params[:behavior_description], caregiver_response: params[:caregiver_response])
                redirect '/behavior_logs'
            else
                erb :'behavior_logs/edit'
            end 
        else 
            redirect '/behavior_logs'
        end 
    end 

    
       
    def get_behavior_log
        @log = BehaviorLog.find(params[:id])
    end
        
end 