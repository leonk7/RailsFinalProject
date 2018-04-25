class HouseOwner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_one:listing
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
end
