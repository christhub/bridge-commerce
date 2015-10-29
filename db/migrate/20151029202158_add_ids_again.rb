class AddIdsAgain < ActiveRecord::Migration
  def change
    add_column :users, :cart_id, :integer
    add_column :posts, :cart_id, :integer
  end
end
