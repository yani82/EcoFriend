class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :brand 

    # validates :content, presence: true
    
end
