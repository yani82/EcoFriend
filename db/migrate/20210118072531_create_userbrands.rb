class CreateUserbrands < ActiveRecord::Migration[6.0]
  def change
    create_table :userbrands do |t|
      t.string :user_id
      t.string :brand_id
      t.boolean :owner

      t.timestamps
    end
  end
end
