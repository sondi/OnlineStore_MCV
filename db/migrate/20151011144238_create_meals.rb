class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
    	t.belongs_to :chef # Same to t.integer :chef_id
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
