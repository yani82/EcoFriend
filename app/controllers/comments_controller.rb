class CommentsController < ApplicationController

    def new
        if @brand = Brand.find_by_id(params[:brand_id]) 
            @comment = @brand.comments.build 
        else
            @comment = Comment.new 
        end 
    end 

    def create
        @comment = current_user.comments.build(comment_params) 
        if @comment.save # returns the same true or false as .valid 
            redirect_to comment_path(@comment)
        else 
            render :show # new review not showing? 
        end 
    end 

    def show
        @comment = Comment.find_by_id(params[:id])
    end 

    def index 
        if @brand = Brand.find_by_id(params[:brand_id]) 
            @comments = @brand.comments 
        else 
            @comments = Comment.all
        end
    end 

    private 

    def comment_params 
        params.require(:comment).permit(:brand_id)
    end 
    
end

