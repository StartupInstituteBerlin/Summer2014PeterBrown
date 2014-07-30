class AddDefaultValueToStatus < ActiveRecord::Migration
  def change
  	change_column :reservations, :status, :string, :default => "Pending"
  end
end
