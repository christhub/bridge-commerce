class AddPrice < ActiveRecord::Migration
  def change
    add_column :posts, :price, :integer
  end
end
