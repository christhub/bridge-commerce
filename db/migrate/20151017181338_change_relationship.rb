class ChangeRelationship < ActiveRecord::Migration
  def change
    remove_column :tags, :post_id, :integer
    add_column :posts, :tag_id, :integer
  end
end
