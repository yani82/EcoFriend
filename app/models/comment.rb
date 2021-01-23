class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :brand 
    accepts_nested_attributes_for :brand 

    validates :content, presence: true
    
end
