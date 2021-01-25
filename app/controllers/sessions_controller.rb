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
        @user = User.find_by(username: params[:user][:username]) #find_by doesn't throw an error   
        # OR if @user && @user.authenticate(params[:user][:password]) 
        if @user.try(:authenticate, params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else 
            flash[:error] = "Sorry, login info was incorrect. Please try again."
            redirect_to login_path
        end 
    end 

    def omniauth
        # byebug

        @user = User.find_or_create_by(username: auth[:info][:email]) do |u|
            u.password = SecureRandom.hex
        end 

        session[:user_id] = @user.id 
        redirect_to user_path(@user)
        # User.where(email: auth[:info][:email]).first_or_initialize
    end 

    private

    def auth
        request.env['omniauth.auth']
    end 

end