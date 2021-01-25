class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :brand 

    validates :review, presence: true
    # validates :brand, uniqueness: { scope: :user, message: "brand has already been reviewed by you" } #not a customized validation (DIDN'T WORK)

    # validates :stars, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 6}
    
    # def brand_attributes=(attributes)
    #     brand = Brand.find_or_create_by(attributes) if !name.empty?
    # end 

    def name_category_info
        "#{name}"
    end 

end
