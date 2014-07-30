class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.datetime :date_time_created
      t.references :user, index: true
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
