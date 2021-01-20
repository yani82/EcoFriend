Eco Friend 

User 
- has_many :comments 
- has_many :brands, through: :comments
- username 
- email 
- password_digest 

Brand *join table joining categories & users 
- has_many :comments 
- has_many :users, through: :comments
- name 
- category  
- info
<!-- or should I add - <shipping> as an attr instead? -->

ie 
1. BioBag (https://www.biobagusa.com/)
2. Seventh Generation (https://www.seventhgeneration.com/home)
3. Patagonia (https://www.patagonia.com/home/)
4. Grow NYC (https://www.grownyc.org/compost) 

Comments (join table) 
- belongs_to :user 
- belongs_to :brand
- review 

ie 
1. Compostable products
2. Cleaning products 
3. Clothing 
4. Compost dropoff sites

<!-- *join table joining users and interests -->

<!-- UserBrand
- belongs_to :user 
- belongs_to :brand 
- userid 
- brandid 
- owner: boolean (didn’t want to have a belongs_to association with brand) -->

Questions
- What UserInterests is associated with a Brand? 
- How many brands is a user interested in?
- Who's the most active user? 
- What's the most popular brand? 


