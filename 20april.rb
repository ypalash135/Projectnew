=begin

Here is the raw data regarding buyers and sellers:
[
 {:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-  1982',  :address => 'sapna sangeeta', :role => 'buyer'}, 
 {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-  1990',  :address => 'bhanwar kua', :role => 'seller'}, 
 {:first_name => 'Meena', :last_name => 'Pallanipppan',  :date_of_birth => '03-02-  1988',  :address => 'sapna sangeeta', :role => 'seller'}, 
 {:first_name => 'Prabhu', :last_name => 'Sharma',  :date_of_birth => '11-02-  1992',  :address => 'geeta bhawan', :role => 'seller'}, 
]
- Scenario: Write method to get the full name of buyer/seller 
 (ex: suppose :first_name => 'alex' and  :last_name => 'newman'  of user, then full name would be 'Alex Neewman') 

 {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
]

- Scenario: Write method to find the age of buyer/seller on the basis of his date_of_birth
- Parameter: A buyer/seller record for ex: {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
- Output: Return age of user after calculating from date_of_birth


- Scenario: Find all the users, whose first name is 'alex'
- Paramters: All the users list given above
- Output: return array of all the user objects whose first name is alex

=end


rawData=
[
  {:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-  1982',  :address => 'sapna sangeeta', :role => 'buyer'}, 
  {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-  1990',  :address => 'bhanwar kua', :role => 'seller'}, 
  {:first_name => 'Meena', :last_name => 'Pallanipppan',  :date_of_birth => '03-02-  1988',  :address => 'sapna sangeeta', :role => 'seller'}, 
  {:first_name => 'Prabhu', :last_name => 'Sharma',  :date_of_birth => '11-02-  1992',  :address => 'geeta bhawan', :role => 'seller'}, 
 ]


def Scenario1(hash1,data)
  puts "#{hash1[data][:first_name]} #{hash1[data][:last_name]}" 
end

def alex
  rawData.each do |value|
    if value[:first_name]=="alex"
      puts "people with first name alex is #{value[:first_name]} #{value[:last_name]}"
    end
    end
end

def findage(year)
  year.to_i
  puts Time.now.year-year
end


puts "Enter numbers to get full name of followings:-"
puts "1 for alex"
puts "2 for alex"
puts "3 for meena"
puts "4 for prabhu"

fname=gets.chomp.to_i

if fname==1
  Scenario1(rawData,0)
elsif fname==2
  Scenario1(rawData,1)
elsif fname==3
  Scenario1(rawData,2)
elsif fname==4
  Scenario1(rawData,3)
else
  puts "Invalid input"
end




puts "Enter numbers to get age of followings:-"
puts "1 for alex"
puts "2 for alex"
puts "3 for meena"
puts "4 for prabhu"

fname=gets.chomp.to_i

if fname==1
  findage(1982)
elsif fname==2
  findage(1990)
elsif fname==3
  findage(1988)
elsif fname==4
  findage(1992)
else
  puts "Invalid input"
end

puts "Person with firstname as Alex are :-"

rawData.each do |i|
  if i[:first_name]=="alex"
    puts "#{i[:first_name]} #{i[:last_name]}"
  end
end