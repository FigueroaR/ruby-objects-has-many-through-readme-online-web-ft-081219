class Waiter
  attr_accessor :name, :age
 
  @@all = []
 
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
  
  def meals
  Meal.all.select do |meal|
    meal.customer == self
  end
  
  
  
end
end