class RecipeCard

  attr_reader :user, :recipe, :date, :rating

  @@all_recipecards = []

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    self.class.all << self
  end

#class methods

  def self.all
    @@all_recipecards
  end

end
