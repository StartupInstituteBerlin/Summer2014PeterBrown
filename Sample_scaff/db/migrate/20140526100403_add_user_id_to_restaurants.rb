class AddUserIdToRestaurants < ActiveRecord::Migration
  def change

  	add_column :restuarants, :user_id, :integer
  end
end
