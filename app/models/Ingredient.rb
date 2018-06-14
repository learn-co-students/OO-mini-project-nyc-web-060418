class Ingredient
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    arr = Allergen.all.map {|allergen| allergen.ingredient}
    frequency_hash = arr.inject (Hash.new(0)) {|i,v| i[v] +=1; i}
    arr.max_by {|v| frequency_hash[v]}
  end

end
