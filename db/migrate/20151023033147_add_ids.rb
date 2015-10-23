class AddIds < ActiveRecord::Migration
  def change
    add_column :comments, :user_id, :integer, :index => true
    add_column :comments, :post_id, :integer, :index => true

  end
end
