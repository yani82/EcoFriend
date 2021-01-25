class Brand < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    accepts_nested_attributes_for :comments 
    
    validates :name, presence: true 
    # validate :not_a_duplicate 

    def brand_attributes=(attributes)
        brand = Brand.find_or_create_by(attributes) if !name.empty?
    end 

    # def not_a_duplicate # custom validation
    #     if Brand.find_by(name: name)
    #       errors.add(:name, 'can not be a duplicate')
    #     end
    # end 

end
