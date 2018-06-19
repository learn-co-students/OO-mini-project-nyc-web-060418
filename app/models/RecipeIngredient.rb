
class RecipeIngredient

  attr_reader :recipe, :ingredient

  @@all_recipe_ingred = []

  def initialize(recipe, ingredient)
    @recipe, @ingredient = recipe, ingredient
    self.class.all << self
  end

  def self.all
    @@all_recipe_ingred
  end

end
