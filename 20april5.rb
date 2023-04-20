=begin

people = {
  "Alice" => {
    "age" => 25,
    "profession" => "Software Developer",
    "hobbies" => ["reading", "painting", "coding"]
  },
  "Bob" => {
    "age" => 30,
    "profession" => "Data Scientist",
    "hobbies" => ["hiking", "reading", "writing", "coding"]
  },
  "Charlie" => {
    "age" => 35,
    "profession" => "UX Designer",
    "hobbies" => ["traveling", "cooking", "gardening"]
  }
}

Write a method count_hobbies that takes hash as a input and returns a new hash where each key is a hobby and the corresponding value is the number of people who have that hobby. The resulting hash should look like this

o/p:  

{"reading"=>2,                                                         
 "painting"=>1,                                                        
 "coding"=>2,                                                          
 "hiking"=>1,                                                          
 "writing"=>1,                                                         
 "traveling"=>1,                                                       
 "cooking"=>1,                                                         
 "gardening"=>1}

=end


$people = {
  "Alice" => {
    "age" => 25,
    "profession" => "Software Developer",
    "hobbies" => ["reading", "painting", "coding"]
  },
  "Bob" => {
    "age" => 30,
    "profession" => "Data Scientist",
    "hobbies" => ["hiking", "reading", "writing", "coding"]
  },
  "Charlie" => {
    "age" => 35,
    "profession" => "UX Designer",
    "hobbies" => ["traveling", "cooking", "gardening"]
  }
}


$array1 = []
def insert_hash(hash)
  for k in $people.keys do
    hob = $people[k]["hobbies"]
      for j in hob do
        $array1.push(j)
      end
  end 
end   
insert_hash($people)

puts $array1.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h