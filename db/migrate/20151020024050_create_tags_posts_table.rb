class CreateTagsPostsTable < ActiveRecord::Migration
  def change
    create_table :tags_posts do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :part, index: true
    end

    remove_column :posts, :tag_id, :integer
    remove_column :tags, :post_id, :integer
  end
end
