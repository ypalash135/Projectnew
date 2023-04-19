class Animal
  def eat
    puts "the animal is eating"
  end
end
class Dog < Animal
  def eat
    super 
  end
end
dog=Dog.new
dog.eat
