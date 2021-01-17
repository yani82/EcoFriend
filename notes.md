Eco Friend 

Brand *join table joining categories & users 
- has_many :users, through: :interests
- belongs_to :user  
- has_many :interests
- name 
- type 
- url 

User 
- has_many :brands, through: :interests 
- has_many :interests 
- username 
- email 
- password_digest 

Interests *join table joining users and posts 
- belongs_to :user 
- belongs_to :brand 
- name 

<!-- Categories
- has_many :brands 
- has_many :users, through: :brands 
- name  -->
