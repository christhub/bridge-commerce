class AddZipcode < ActiveRecord::Migration
  def change
    add_column :carts, :zipcode, :integer
  end
end
