class Customer
  attr_accessor :name, :age
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, customer, total)
    Meal.new(waiter, self, total)
  end

  def meals
    Meal.all.select {|x| x.customer == self}
  end

  def waiters
    Meal.all.select {|x| x.waiter == self}
  end

end
