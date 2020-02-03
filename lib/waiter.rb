class Waiter
  attr_accessor :name, :exp
  @@all = []

  def initialize(name, exp)
    @name = name
    @exp = exp
    @@all << self
  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select{|x| x.waiter == self}
  end

  def best_tipper
    all_meals = Meal.all.map
    p all_meals.max{|a, b| a.tip <=> b.tip}
  end

  def self.all
    @@all
  end
end
