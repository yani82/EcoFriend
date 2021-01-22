class SessionsController < ApplicationController

    def welcome 
    end 

    def destroy 
        session.delete(:user_id) 
        redirect_to '/'
    end 

    def new
    end 

    def create 
        User.find_by(username: params[:username]) #find_by doesn't throw an error   
        byebug
    end 

end