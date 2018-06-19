

class Recipe

  @@all_recipe = []

  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end
#instancemethods

  def add_ingredients(ingredient_array)
    ingredient_array.each {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

  def users
    recipe_card_helper.collect {|recipe_card| recipe_card.user}
  end

  def ingredients
    recipe_ingred_helper.collect {|recipe_ingred| recipe_ingred.ingredient}
  end

  def allergens
    ingredients.select {|ingredient| collect_allergens.include?(ingredient)}
  end

  def self.most_popular
    # collect all recipe cards recipes
    # count recipe instance apperances in recipe cards
    all.max_by {|recipe| recipe.count}
  end

# class methods

  def self.all
    @@all_recipe
  end

  # def method_name
  #
  # end

  def count
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end.count
  end

  private

  def recipe_card_helper
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
  end

  def recipe_ingred_helper
    RecipeIngredient.all.select {|recipe_ingred| recipe_ingred.recipe == self}
  end

  def collect_allergens
    Allergen.all.collect {|allergen| allergen.ingredient}
  end



  # def count
  #   .all.select do |allergen|
  #     allergen.ingredient == self
  #   end.count
  # end


end
