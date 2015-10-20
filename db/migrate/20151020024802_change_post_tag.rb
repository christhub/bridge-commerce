class ChangePostTag < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :part, index: true
    end

    drop_table :tags_posts

  end
end
