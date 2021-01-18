class User < ApplicationRecord
    has_many :brands, through: :interests 
    has_many :interests, source: :brand
    has_secure_password

end
