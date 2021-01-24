class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :brand 

    validates :review, presence: true

    # validates :stars, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 6}
    
    # def brand_attributes=(attributes)
    #     brand = Brand.find_or_create_by(attributes) if !name.empty?
    # end 

end
