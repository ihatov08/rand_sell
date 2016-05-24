class AddUserIdToLands < ActiveRecord::Migration
  def change
    add_reference :lands, :user, index: true, foreign_key: true
  end
end
