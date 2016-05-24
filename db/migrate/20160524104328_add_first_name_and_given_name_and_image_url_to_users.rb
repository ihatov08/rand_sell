class AddFirstNameAndGivenNameAndImageUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :given_name, :string
    add_column :users, :image_url, :string
  end
end
