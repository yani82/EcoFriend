class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :type
      t.string :text
      t.has_many :user

      t.timestamps
    end
  end
end
