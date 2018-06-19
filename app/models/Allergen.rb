class Allergen

  attr_reader :user, :ingredient

  @@all_allergens = []

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    self.class.all << self
  end

  def self.all
    @@all_allergens
  end

end
