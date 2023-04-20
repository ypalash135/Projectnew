#Take 10 integer inputs from user and store them in an array. Next, copy all the elements in another array but in reverse order.

arr=[]
for i in 1..10
  i=gets.chomp.to_i
  arr.push(i)
end
p arr
arr2=arr.reverse
p arr2