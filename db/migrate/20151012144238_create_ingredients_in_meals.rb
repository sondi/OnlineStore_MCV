class CreateIngredientsInMeals < ActiveRecord::Migration
  def change
    create_table :ingredients_in_meals do |t|
    	t.belongs_to :meal
    	t.belongs_to :ingredient
      t.integer :quantity
      t.string :measurement
      t.timestamps
    end
  end
end
