class CommentsController < ApplicationController
    # before_action :find_comment, only: [:new, :index]
    # before_action :find_user

    def new
        # if @brand = Brand.find_by_id(params[:brand_id]) 
        #     @comment = @brand.comments.build 
        # else
            if params[:brand_id] 
                set_brand
                @comment = @brand.comments.build
                # binding.pry
            else 
                @comment = Comment.new 
            # @comment.user = current_user 
        end 
    end  

    def create
        set_brand
        # binding.pry 
        @comment = @brand.comments.build(comment_params)  
        # @comment.user = current_user 
         if @comment.save # returns the same true or false as .valid 
             redirect_to brand_comment_path(@brand, @comment)
         else 
             render :new # new review not showing? 
         end 
     end 

    def show
        @comment = Comment.find_by_id(params[:id])
    end 

    def index 
        if set_brand
            @comments = @brand.comments 
        else 
            @comments = Comment.all
        end
    end 

    private # methods that you create/helpers 

    def comment_params 
        params.require(:comment).permit(:user_id, :brand_id, :review)
    end 

    def find_user
        @user = current_user
        # binding.pry 
    end

    def set_brand 
        @brand = Brand.find_by_id(params[:brand_id])
    end 
    
end 

