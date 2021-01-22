class Brand < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    
    def 
    end 
    
end
