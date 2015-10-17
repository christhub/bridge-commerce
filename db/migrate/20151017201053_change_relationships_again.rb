class ChangeRelationshipsAgain < ActiveRecord::Migration
  def change
    remove_column :posts, :tag_id, :integer
    add_column :tags, :post_id, :integer
  end
end
