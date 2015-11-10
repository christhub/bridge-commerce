class RemoveImageFromPost < ActiveRecord::Migration
  def change
    remove_attachment :images, :image
  end
end
