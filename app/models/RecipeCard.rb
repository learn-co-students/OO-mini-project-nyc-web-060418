class RecipeCard
  @@all = []

  attr_accessor :recipe, :user, :date, :rating

  def initialize(recipe, user, date, rating)
    @recipe = recipe
    @user = user
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
