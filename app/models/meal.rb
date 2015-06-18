class Meal < ActiveRecord::Base
	belongs_to :chef
	has_many :ingredients_in_meals
end