class User < ApplicationRecord
 validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Email invalid"  },
   uniqueness: { case_sensitive: false },length: { minimum: 4, maximum: 254 }
   
   
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
   enum role: { Buyer: 0, Seller: 1 } 
   devise :registerable, :confirmable
end

