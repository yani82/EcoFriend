class CreateUserbrands < ActiveRecord::Migration[6.0]
  def change
    create_table :userbrands do |t|
      t.string :user_id
      t.string :brand_id
      # t.boolean :owner
      t.belongs_to :user_id, foreign_key: true 
      t.belongs_to :brand_id, foreign_key: true 

      t.timestamps
    end
  end
end
