class ChangePostsTags < ActiveRecord::Migration
  def change
        create_table :posts_tags do |t|
          t.belongs_to :tag, index: true
          t.belongs_to :post, index: true
        end

        drop_table :post_tags

  end
end
