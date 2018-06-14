class Ingredient

  attr_reader :name

  @@all_ingredients = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all_ingredients
  end

  def count
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end.count
  end

  def self.most_common_allergen
    self.all.max_by do |ingredient|
      ingredient.count
    end
  end


end
