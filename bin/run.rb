require 'pry'

require_relative '../app/models/Allergen'
require_relative '../app/models/Ingredient'
require_relative '../app/models/Recipe'
require_relative '../app/models/RecipeCard'
require_relative '../app/models/RecipeIngredient'
require_relative '../app/models/User'


u1 = User.new("u1")
u2 = User.new("u2")
u3 = User.new("u3")
u4 = User.new("u4")
u5 = User.new("u5")

r1 = Recipe.new("r1")
r2 = Recipe.new("r2")
r3= Recipe.new("r3")
r4= Recipe.new("r4")

rc1 = RecipeCard.new(u5, r1, 4, 1992)
rc2 = RecipeCard.new(u4, r2, 3, 1993)
rc3 = RecipeCard.new(u3, r2, 4, 1994)
rc4 = RecipeCard.new(u2, r4, 0, 1995)
rc5 = RecipeCard.new(u2, r3, 1, 1996)
rc6 = RecipeCard.new(u2, r2, 1, 1)

i1 = Ingredient.new("i1")
i2 = Ingredient.new("i2")
i3 = Ingredient.new("i3")
i4 = Ingredient.new("i4")
i5 = Ingredient.new("i5")
i6 = Ingredient.new("i6")

ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r1, i2)
ri3 = RecipeIngredient.new(r2, i3)
ri4 = RecipeIngredient.new(r3, i4)
ri5 = RecipeIngredient.new(r4, i5)
ri6 = RecipeIngredient.new(r1, i5)
ri7 = RecipeIngredient.new(r1, i6)
ri8 = RecipeIngredient.new(r2, i4)

a1 = Allergen.new(u1, i6)
a2 = Allergen.new(u2, i5)
a3 = Allergen.new(u3, i4)
a4 = Allergen.new(u4, i3)
a5 = Allergen.new(u5, i2)
a6 = Allergen.new(u1, i1)
a7 = Allergen.new(u2, i1)
a8 = Allergen.new(u2, i2)

binding.pry
