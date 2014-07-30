class CreateRestuarants < ActiveRecord::Migration
  def change
    create_table :restuarants do |t|
      t.string :name

      t.timestamps
    end
  end
end
