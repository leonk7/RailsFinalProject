class HouseListingsController < ApplicationController

	def index
    	@house_listings = HouseListing.all
  	end

  	def show
    	@house_listings = HouseListing.find(params[:id])
  	end

  	def create_listing
  		listing = HouseListing.find(params[:id])
  		listing.owner = current_owner #what is current owner?
  	end

  	


end
