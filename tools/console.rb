require_relative '../config/environment.rb'
require 'pry'


michael = User.new("Michael")
ingredient = Ingredient.new("peanuts")
allergen = Allergen.new(michael, ingredient)
alex = User.new("Alex")
allergen2 = Allergen.new(alex, ingredient)
ingredient2 = Ingredient.new("oranges")
ingredient3 = Ingredient.new("fish")
allergen3 = Allergen.new(alex, ingredient3)
recipe1 = Recipe.new("smores")
recipe2 = Recipe.new("pizza")
recipe3 = Recipe.new("choco cake")
recipe4 = Recipe.new("icebox cake")
recipe5 = Recipe.new("tuna sandwich")
recipe6 = Recipe.new("tuna sandwich")
recipe7 = Recipe.new("tuna sandwich")

recipe_card1 = RecipeCard.new(alex, recipe1, "60118", 4)
recipe_card2 = RecipeCard.new(alex, recipe2, "60518", 5)
recipe_card3 = RecipeCard.new(alex, recipe3, "60818", 2)
recipe_card4 = RecipeCard.new(michael, recipe4, "61018", 5)
recipe_card5 = RecipeCard.new(michael, recipe5, "61218", 3)
recipe_card6 = RecipeCard.new(michael, recipe5, "61418", 2)
recipe_card7 = RecipeCard.new(alex, recipe5, "61618", 1)
binding.pry
