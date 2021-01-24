class ApplicationController < ActionController::Base

    private 

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) # find_by_id so it doesn't error out and ||= calls on db once 
    end 

end
