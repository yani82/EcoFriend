class BrandsController < ApplicationController

    def new 
        @brand = Brand.new 
        #byebug
        @brand.build_brand
    end

    def index
    end 

    def create
        @brand = Brand.new(brand_params)
        @brand.brand_id_id = session[:brand_id_id]
        @brand.user_id_id = session[:user_id_id]
        if @brand.save
            redirect_to brands_path(@brand)
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

    private 

    def brand_params
        params.require(:brand).permit(:name, :category, :info, comment_attributes: [:review])
    end 

end