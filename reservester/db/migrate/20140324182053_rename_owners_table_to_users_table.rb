class RenameOwnersTableToUsersTable < ActiveRecord::Migration
  def change
  	rename_table :owners, :users
  	remove_index :restaurants, :name => 'index_restaurants_on_owner_id'
  	add_reference :restaurants, :user, index: true
  	remove_column :restaurants, :owner_id
  end
end
