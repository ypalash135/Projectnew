class First 
  def one 
    two 
  end
  protected
  def two
    puts "hello how are you!"
  end
end
obj1=First.new
obj1.one
class Second < First
  def three
    two
  end
end
obj2=Second.new
obj2.three

