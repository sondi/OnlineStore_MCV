class Ingredient < ActiveRecord::Base
	has_many :ingredients_in_meals
end