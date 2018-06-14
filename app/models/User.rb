class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    array = []
    RecipeCard.all.each do |rc_instance|
      if rc_instance.user == self
        array << rc_instance.recipe
      end
    end
    array
  end
    #

  def add_recipe_card(recipe_instance, date, rating)
    RecipeCard.new(self, recipe_instance, rating, date)
  end

  def declare_allergen(ingredient_instance)
    Allergen.new(self, ingredient_instance)
  end

  def allergens

    Allergen.all.map do |a|
      if a.user == self
        a.ingredient
      end
    end.compact

  end

  def top_three_recipes

    array_rating = []

    RecipeCard.all.each do |rc|
      if rc.user == self
        array_rating << rc.rating
      end
    end

    array_rating_3 = array_rating.sort.reverse[0..2]

    instance_array = []

    RecipeCard.all.each do |rc|
      if array_rating_3.include?(rc.rating)
        instance_array << rc.recipe
      end
    end
    instance_array
  end


  def most_recent_recipe
    RecipeCard.all[-1].recipe
  end



end
