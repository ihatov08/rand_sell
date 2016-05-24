class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.string :address
      t.integer :area
      t.integer :price
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
