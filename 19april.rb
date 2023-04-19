class Animal
  def food 
    food2
  end
  private 
  def food2 
    puts "eats food1"
  end
end
a=Animal.new
a.food
class Dog <Animal
  def food3
    food2
  end
end
b=Dog.new
b.food3
