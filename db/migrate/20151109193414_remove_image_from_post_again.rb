class RemoveImageFromPostAgain < ActiveRecord::Migration
  def change
    remove_attachment :posts, :image
    add_attachment :images, :image
  end
end
