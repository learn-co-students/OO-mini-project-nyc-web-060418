class Ingredient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen

    i_count = 0
    i_recipe = nil

    Ingredient.all.each do |i|
      count = 0
      Allergen.all.each do |a|
        if i == a.ingredient
          count += 1
        end
      end
      if count > i_count
        i_recipe = i
        i_count = count
      end
    end
    i_recipe
  end


end
