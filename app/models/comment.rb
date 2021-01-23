class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :brand 
    accepts_nested_attributes_for :brand 

    # def comment
    # end 

    # def comment= 
    # end 

    # def build_comment 
    # end 

    # def comment_id 
    # end 

    # def comment_id=
    # end 
    
end
