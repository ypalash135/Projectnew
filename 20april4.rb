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


people = {
	"Alice"=> 
	{"age" => 25,"profession" => "Software Developer","hobbies" => ["reading", "painting", "coding"]},
  "Bob" => {"age" => 30,"profession" => "Data Scientist","hobbies" => ["hiking", "reading", "writing", "coding"]},
	"Charlie" => { "age" => 35,"profession" => "UX Designer","hobbies" => ["traveling", "cooking", "gardening"]}
 }

x= people["Alice"]["hobbies"]
y= people["Bob"]["hobbies"]
z= people["Charlie"]["hobbies"]

def pushing(array1,array2)
	for i in 0..array2.length-1
	  array1.push(array2[i])
	end
end
arr1=[]
pushing(arr1,x)
pushing(arr1,y)
pushing(arr1,z)

arr1
arr5=[]
def findnumbers(arr,arrr)
	for i in 0..arr.length-1
		o="#{arr[i]} : #{arr.count(arr[i])}"
		arrr.push(o)
		end
end
findnumbers(arr1,arr5)
p arr5.uniq























