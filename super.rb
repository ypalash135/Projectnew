class Animal 
  def eat(food)
    puts "Eating #{food}"
  end
end
class Dog < Animal
  def eat(food1,food2)
    super(food1)
    puts "eating #{food2} also."
  end
end
doggy=Dog.new
doggy.eat('buiscut','bread')