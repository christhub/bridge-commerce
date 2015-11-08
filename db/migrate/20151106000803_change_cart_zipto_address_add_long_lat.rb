class ChangeCartZiptoAddressAddLongLat < ActiveRecord::Migration
  def change
    remove_column :carts, :zipcode
    add_column :carts, :address, :string
    add_column :carts, :latitude, :float
    add_column :carts, :longitude, :float
  end
end
