class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :brand 

    # validates :content, presence: true
    
    def brand_attributes=(attributes)
        brand = Brand.find_or_create_by(attributes) if !name.empty?
    end 
    
end
