class Brand < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    accepts_nested_attributes_for :comments 
    
    def brand_attributes=(attributes)
        brand = Brand.find_or_create_by(attributes) if !name.empty?
    end 
end
