class ListingController < ApplicationController

	def new
  		@listing = Listing.new
  	end

  def show
    @listing = Listing.find(params[:id])
  end
 
  	def create
  		@listing = Listing.create(listing_params)
  		@listing.update(house_owner_id: current_house_owner.id)

	  	if @listing.save
        redirect_to root_path
	  		#redirect_to house_owner_path(current_house_owner) # need to create these routes & views
	  	else
	      render "new"
	  		flash[:error] = "invalid listing"
	  	end
  	end


  #private methods go at end of file
  	private 
  		def listing_params
  			params.require(:listing).permit(:title, :description, :address, :price, :lease_term, :photo)
  		end

end
