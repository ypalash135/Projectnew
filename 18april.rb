$a=[]

class CurdOperation

def create(newArray,name,age,id,gender)
  $newArray=[]
  $newArray.push(name)
  $newArray.push(age)
  $newArray.push(id)
  $newArray.push(gender)
  $a.push($newArray)
end

def update(arraynumber,name2,age2,id2,gender2)
  $a[arraynumber][0]=name2
  $a[arraynumber][1]=age2
  $a[arraynumber][2]=id2
  $a[arraynumber][3]=gender2
end


def read(arraynumber)
  $a[arraynumber]
end


def delete(arraynumber)
  $a[arraynumber]=''
end

end

bestpeers=CurdOperation.new
bestpeers.Create('arr1','user1',22,1,'male')
bestpeers.Create('arr2','user2',23,2,'male')
bestpeers.Update(0,'userone',23,2,'female')
puts bestpeers.Read(1)
bestpeers.delete(1)


