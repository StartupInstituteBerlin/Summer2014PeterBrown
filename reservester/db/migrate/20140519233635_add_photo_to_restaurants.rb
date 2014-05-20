class AddPhotoToRestaurants < ActiveRecord::Migration
  def change
  	add_column :resturants, :photo, :string
  end
end
