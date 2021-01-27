class BrandsController < ApplicationController

    def new 
        @brand = Brand.new
        @user = current_user 
        #byebug
        # @brand.build_brand 
        # or @brand.comments.build or @users.comments.build
    end

    def index
        @brands = Brand.all 
    end 

    def create 
        @brand = current_user.brands.build(brand_params)
        # @brand.brand = session[:brand]
        # @brand.user = session[:user]
        if @brand.save
            # binding.pry
            redirect_to brands_path(@brand)
        else 
            render :new 
        end 
    end 

    private 

    def brand_params
        params.require(:brand).permit(:name, :category, :info, :image, comments_attributes:[:review])
    end 

end