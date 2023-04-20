arr=[]
for i in 1..10
    i=gets.chomp.to_i
    arr.push(i)
end
p arr
p arr.uniq