class Brand < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    accepts_nested_attributes_for :comments 
    
    validates :name, presence: true 
    validate :not_a_duplicate 

    # scope :order_by_rating, -> {joins(:brands).group(:id).order('avg(no attribute?) desc')} & change in controller/index 

    def self.alpha
        order(:name)
    end 

    def brand_attributes=(attributes)
        brand = Brand.find_or_create_by(attributes) if !name.empty?
    end 

end
