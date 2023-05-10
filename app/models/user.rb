class User < ApplicationRecord

    has_many :posts
    validates :name,:email, presence: true
    validates :name,:email, uniqueness: true

    before_validation :create_password
    
     private
       def create_password
         self.password=SecureRandom.random_number(100000) 
       end

end
