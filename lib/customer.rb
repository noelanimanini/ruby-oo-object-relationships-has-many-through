require 'pry'
class Customer
    @@all = []
    attr_accessor :age, :name
    def initialize (age, name)
        @age = age 
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def new_meal(waiter, total, tip=0)
        Meal.new(waiter, self, total, tip)
    end 

    def meals
        Meal.all.select {|meal| meal.customer == self }
    end 

    def waiters
        meals.map {|meal| meal.waiter}
    
    end  
end