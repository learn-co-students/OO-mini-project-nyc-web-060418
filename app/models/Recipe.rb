class Recipe

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    p_count = 0
    p_recipe = nil

    Recipe.all.each do |r|
      count = 0
      RecipeCard.all.each do |rc|
        if r == rc.recipe
          count += 1
        end
      end
      if count > p_count
        p_recipe = r
        p_count = count
      end
    end
    p_recipe
  end

  def users
    array = []
    RecipeCard.all.each do |rc|
      if rc.recipe == self
        array << rc.user
      end
    end
    array
  end

  def ingredients
    array = []
    RecipeIngredient.all.each do |i|
      if i.recipe == self
        array << i.ingredient
      end
    end
    array
  end

  def allergens
    array = []
    ingredients.each do |i|
      Allergen.all.each do |a|
        if i == a.ingredient
          array << a.ingredient
        end
      end
    end
    array.uniq
  end

  def add_ingredients(array)
    array.each do |i|
      RecipeIngredient.new(self, i)
    end
  end




end
