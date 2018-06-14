class RecipeIngredient
  @@all = []

  attr_accessor :recipe, :ingredient, :name


  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @name = ingredient.name
    @@all << self
  end

  def self.all
    @@all
  end

end
