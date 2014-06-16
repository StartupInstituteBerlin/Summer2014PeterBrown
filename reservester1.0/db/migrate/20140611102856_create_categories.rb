class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :name

      t.timestamps
    end
    #this is the join table for categories and restaurant
    create_table :categories_restaurants, id: false do |t|
    	t.integer :category_id
    	t.integer :restaurant_id

      t.timestamps
    end

  end
end
