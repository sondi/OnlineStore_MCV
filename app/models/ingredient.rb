class Ingredient < ActiveRecord::Base
	has_many :ingredients_in_meals
	has_many :meals, through: :ingredients_in_meals
end