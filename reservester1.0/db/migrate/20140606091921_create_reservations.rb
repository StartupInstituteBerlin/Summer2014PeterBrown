class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
    	t.string :email
    	t.timestamp :date
    	t.integer :restaurant_id
    	t.text :description
      t.timestamps
    end
  end
end
