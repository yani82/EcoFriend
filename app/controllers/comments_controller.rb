class CommentsController < ApplicationController

    def new
        @brand = Brand.find_by_id(params[:id]) 
        @comment = @brand.build_comment  
    end 
    
    def index 
        @comments = Comment.all
    end 

    def create
        @comment = Comment.new(comment_params)
        @comment.brand_id_id = session[:brand_id_id]
        @comment.user_id_id = session[:user_id_id]
        if @comment.save
            redirect_to comments_path(@comment)
        else 
            render :new 
        end 
    end 
    
end

