class Allergen
  @@all = []

  attr_accessor :user, :ingredient, :name

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @name = ingredient.name
    @@all << self
  end

  def self.all
    @@all
  end

end
