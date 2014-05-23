class CreateResturants < ActiveRecord::Migration
  def change
    create_table :resturants do |t|
      t.string :name
      t.text :description
      t.integer :address_id

      t.timestamps
    end
  end
end
