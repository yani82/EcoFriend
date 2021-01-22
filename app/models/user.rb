class User < ApplicationRecord
    has_many :comments 
    has_many :brands, through: :comments

    validates :username, uniqueness: true, presence: true 

    has_secure_password

end
