class HomeController < ApplicationController
 def index
 	@owners = Listing.all
 end

end
