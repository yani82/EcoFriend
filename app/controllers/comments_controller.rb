class CommentsController < ApplicationController

    def new 
        @comment = Comment.new 
        @comment.build_brand
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = session[:user_id]
        if @comment.save
            redirect_to @comment
        else 
            render :new
        end 
    end 

    private 

    def comment_params
        params.require(:comment).permit(:review, brand_attributes: [:name, :category, :info])
    end 

end
