class Waiter
  attr_accessor :name, :exp
  @@all = []

  def initialize(name, exp)
    @name = name
    @exp = exp
    @@all << self
  end

  def new_meal(waiter, customer, total)
    Meal.new(self, customer, total )
  end

  def self.all
    @@all
  end
end
