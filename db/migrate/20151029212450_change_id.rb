class ChangeId < ActiveRecord::Migration
  def change
    remove_column :users, :cart_id, :integer
    add_column :carts, :user_id, :integer
  end
end
