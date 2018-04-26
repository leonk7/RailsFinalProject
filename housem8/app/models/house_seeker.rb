class HouseSeeker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many:matchs
  #belongs_to:listing
  #has_many:listings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
end
