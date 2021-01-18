class CreateUserbrands < ActiveRecord::Migration[6.0]
  def change
    create_table :userbrands do |t|
      t.string :userid
      t.string :brandid
      t.string :owner

      t.timestamps
    end
  end
end
