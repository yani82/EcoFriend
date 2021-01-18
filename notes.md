Eco Friend 

Brand *join table joining categories & users 
- has_many :users, through: :interests
<!-- - belongs_to :user   -->
- has_many :interests
- name 
- type 
- url 

ie 
1. BioBag (https://www.biobagusa.com/)
2. Seventh Generation (https://www.seventhgeneration.com/home)
3. Patagonia (https://www.patagonia.com/home/)
4. Grow NYC (https://www.grownyc.org/compost) 

User 
- has_many :brands, through: :interests 
- has_many :interests 
- username 
- email 
- password_digest 

<!-- Interest  
- belongs_to :user 
<!-- - belongs_to :brand  -->
<!-- - name  --> -->

ie 
1. Compostable products
2. Cleaning products 
3. Clothing 
4. Compost dropoff sites

*join table joining users and interests

UserBrand
- belongs_to :user 
- belongs_to :brand 
- userid 
- brandid 
- owner: boolean (didn’t want to have a belongs_to association with brand)

Questions
- What UserInterests is associated with a Brand? 
- How many brands is a user interested in?
- Who's the most active user? 
- What's the most popular brand? 


