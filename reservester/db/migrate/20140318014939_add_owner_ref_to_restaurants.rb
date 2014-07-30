class AddOwnerRefToRestaurants < ActiveRecord::Migration
  def change
    add_reference :restaurants, :owner, index: true
  end
end
