class DropTable < ActiveRecord::Migration
  def change
    drop_table :lists
  end
end
