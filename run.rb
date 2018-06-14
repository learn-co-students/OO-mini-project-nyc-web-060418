require 'bundler/setup'
Bundler.require
require_all 'app'



user1 = User.new("Jee")
user2 = User.new("Isaac")
user3 = User.new("Changmin")
user4 = User.new("Risher")

recipe1 = Recipe.new("Ramen with kimchi in it")
recipe2 = Recipe.new("Ramen without kimchi in it")
recipe3 = Recipe.new("Shake shack burger")
recipe4 = Recipe.new("Shroomburger")
recipe5 = Recipe.new("Thicc Cake")
recipe6 = Recipe.new("My friends Kale")
recipe7 = Recipe.new("popcorn")

user1.add_recipe_card(recipe1, 0, 1.5)
user2.add_recipe_card(recipe2, 0, 1.5)
user3.add_recipe_card(recipe3, 0, 2.5)
user1.add_recipe_card(recipe4, 0, 3.5)
user2.add_recipe_card(recipe5, 0, 4.0)
user3.add_recipe_card(recipe6, 0, 4.0)
user1.add_recipe_card(recipe7, 0, 6.5)
user2.add_recipe_card(recipe3, 0, 9.5)
user1.add_recipe_card(recipe6, 0, 1.0)

ingredient1 = Ingredient.new("butts")
ingredient2 = Ingredient.new("more butts")
ingredient3 = Ingredient.new("pollen")
ingredient4 = Ingredient.new("dust")
ingredient5 = Ingredient.new("thots")
ingredient6 = Ingredient.new("t h o t s")
ingredient7 = Ingredient.new("honey")
ingredient8 = Ingredient.new("blue food coloring")
ingredient9 = Ingredient.new("ramen without kimchi in it")
ingredient10 = Ingredient.new("ramen with kimchi in it")
ingredient11 = Ingredient.new("kale")
ingredient12 = Ingredient.new("my friends kale")
ingredient13 = Ingredient.new("wood")
ingredient14 = Ingredient.new("rocks")
ingredient15 = Ingredient.new("diamonds")
ingredient16 = Ingredient.new("salt")
ingredient17 = Ingredient.new("water")
ingredient18 = Ingredient.new("la croix")

user1.declare_allergen(ingredient9)
user2.declare_allergen(ingredient9)
user3.declare_allergen(ingredient9)
user3.declare_allergen(ingredient1)
user2.declare_allergen(ingredient2)
user1.declare_allergen(ingredient3)
user1.declare_allergen(ingredient11)
user3.declare_allergen(ingredient8)
user2.declare_allergen(ingredient18)
user1.declare_allergen(ingredient17)
user1.declare_allergen(ingredient14)

recipe1.add_ingredients([ingredient1, ingredient2, ingredient3])
recipe2.add_ingredients([ingredient5, ingredient8, ingredient7])
recipe3.add_ingredients([ingredient3, ingredient12, ingredient4])
recipe4.add_ingredients([ingredient8, ingredient17, ingredient13])
recipe5.add_ingredients([ingredient1, ingredient11, ingredient12])
recipe6.add_ingredients([ingredient9, ingredient17, ingredient14])

# puts Ingredient.most_common_allergen
# puts Recipe.most_popular
# puts user1.top_3_recipes
# puts user1.most_recent_recipe
puts recipe6.allergens


binding.pry
