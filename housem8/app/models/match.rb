class Match < ApplicationRecord
	belongs_to:house_seeker
	belongs_to:house_owner
	has_one:listing
	has_one:house_seeker
	has_one:house_owner 
end
