class User < ApplicationRecord
 # rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
enum role: { Buyer: 0, Seller: 0 } 
end
