class BrandsController < ApplicationController

    def new 
        @brand = Brand.new
        @brand.comments.build
        @user = current_user 
        #byebug
        # @brand.build_brand or @users.comments.build
    end

    def index
        @brands = Brand.all 
    end 

    def create 
        @brand = Brand.new(brand_params) 
        # @brand = current_user.brands.build(brand_params)
        # @brand.brand = session[:brand]
        # @brand.user = session[:user]
        if @brand.save
            redirect_to brand_path(@brand)
        else 
            render :new 
        end 
    end 

    def show
        @brand = Brand.find_by_id(params[:id])
        @comments = @brand.comments.build 
        # binding.pry 
    end 

    # def edit
    # end 

    # def delete 
    # end 

    private 

    def brand_params
        params.require(:brand).permit(:name, :category, :info, :image, comments_attributes:[:user_id, :brand_id, :review])
    end 

end