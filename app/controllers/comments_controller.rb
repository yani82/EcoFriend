class CommentsController < ApplicationController

    def new 
        @comment = Comment.new 
        #byebug
        # @comment.build_brand
    end

    def create
        # @comment = Comment.new(comment_params)
        @comment = current_user.comments.build(comment_params)
        # @comment.brand_id_id = session[:brand_id_id]
        # @comment.user_id_id = session[:user_id_id]
        if @comment.save
            redirect_to comment_path(@comment)
        else
            render :new
        end
    end

    # def create
    #     @recipe = current_user.recipes.build(recipe_params)
    #     # binding.pry
    #     if @recipe.save
    #         # binding.pry
    #         flash[:notice]= "Recipe successfully saved"
    #         redirect_to '/my_recipes'
    #     else
    #         flash.now[:alert] = @recipe.errors.full_messages[0]          
    #         render 'new'       
    #     end  
    # end

    def index
    end 

    private 

    def comment_params
        params.require(:comment).permit(:review, brand_attributes: [:name, :category, :info])
    end 

end
