class CommentsController < ApplicationController
    # before_action :find_comment, only: [:new, :index]
    # before_action :find_user

    # http_basic_authenticate_with name: "Yani", password: "12345", only: [:delete]

    def new
        # if @brand = Brand.find_by_id(params[:brand_id]) 
        #     @comment = @brand.comments.build 
        # else
            if params[:brand_id] 
                set_brand
                @comment = @brand.comments.build
            else 
                @comment = Comment.new 
            # @comment.user = current_user 
        end 
    end  

    def create
        set_brand
        @comment = @brand.comments.build(comment_params)  
        @comment.user = current_user 
        # binding.pry
         if @comment.save # returns the same true or false as .valid 
             redirect_to brand_comment_path(@brand, @comment)
         else 
             render :new  
         end 
     end 

    def show
        @comment = Comment.find_by_id(params[:id])
        set_brand 
    end 

    def index 
        if set_brand
            @comments = @brand.comments 
        else 
            @comments = Comment.all
        end
    end 

    def edit
        @comment = Comment.find(params[:id])
    end 

    def update
        @comment = Comment.find(params[:id])
            if(@comment.update(comment_params))
                redirect_to @comment 
            else 
                render 'edit'
            end 
    end 

    def destroy 
        @comment = Comment.find(params[:id])
        @comment.destroy 

        redirect_to comments_path 
    end 

    private # methods that you create/helpers 

    def comment_params 
        params.require(:comment).permit(:user_id, :brand_id, :review)
    end 

    # def find_user
    #     @user = current_user
    #     # binding.pry
    # end

    def set_brand 
        @brand = Brand.find_by_id(params[:brand_id])
    end 
    
end 

