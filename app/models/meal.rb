class Meal < ActiveRecord::Base
	belongs_to :chef
	has_many :ingredients_in_meals
	has_many :ingredients, through: :ingredients_in_meals
end