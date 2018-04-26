class HomeController < ApplicationController
 def index
 	if current_house_owner
 		@listings = Listing.where(house_owner_id:current_house_owner.id)
 	end
 	if current_house_seeker
 		@listings = Listing.all
 	end
 end

end
