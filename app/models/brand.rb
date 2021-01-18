class Brand < ApplicationRecord
    has_many :users, through: :interests
    has_many :interests

    
end
