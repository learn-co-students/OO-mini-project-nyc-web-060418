class User
  @@all = []

  attr_accessor :name, :recipe_cards

  #INSTANCE METHODS

  def initialize(name)
    @name = name
    @recipe_cards = []
    @@all << self
    @most_recent = nil
  end

  def allergens
    Allergen.all.select {|allergen| allergen.user == self}
  end

  def recipe_cards
    RecipeCard.all.select {|recipe_card| recipe_card.user == self}
  end

  def recipes
    recipe_cards.collect {|recipe_card| recipe_card.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    recipe_card = RecipeCard.new(recipe, self, date, rating)
    recipe_cards << recipe_card
    @most_recent = recipe_card
    recipe_card
  end

  def declare_allergen(ingredient)
    allergen = Allergen.new(self, ingredient)
    allergens << allergen
    allergen
  end

  def top_3_recipes
    recipe_cards.sort {|x, y| x.rating <=> y.rating }
    recipe_cards[0..2]
  end

  def most_recent_recipe
    @most_recent
  end

  # CLASS METHODS

  def self.all
    @@all
  end

end
