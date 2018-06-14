class Recipe
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_ingredients(array_of_ingredients)
    array_of_ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

  def ingredients
    RecipeIngredient.all.select {|recipe_ingredient| recipe_ingredient.recipe == self}
  end

  def allergens
    #binding.pry
    ingredient_array = ingredients.map {|recipe_ingredient| recipe_ingredient.ingredient}
    Allergen.all.select {|allergen| ingredient_array.include?(allergen.ingredient)}
  end

  def users
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
  end

  def self.most_popular
    @@all.sort {|x, y| x.users.length <=> y.users.length}
    @@all[-1]
  end

  def self.all
    @@all
  end



end
