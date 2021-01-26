class BrandsController < ApplicationController

    def new 
        @brand = Brand.new 
        #byebug
        # @brand.build_brand or @brand.comments.build or @users.comments.build
    end

    def index
        @brands = Brand.all 
    end 

    # def create
    #     # binding.pry 
    #     @brand = Brand.new(brand_params)
    #     # @brand.brand = session[:brand]
    #     # @brand.user = session[:user]
    #     if @brand.save
    #         redirect_to brands_path(@brand)
    #     else 
    #         render :new 
    #     end 
    # end 

    private 

    def brand_params
        params.require(:brand).permit(:name, :category, :info, comment_attributes: [:review])
    end 

end