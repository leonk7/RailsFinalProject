class ListingController < ApplicationController
	def index
		@listings = Listings.all
	end

	def new
  		@listing = Listing.new
  	end

  def show
    @listing = Listing.find(params[:id])
  end

  def like
    @list = Listing.find(params[:id])
    @list.likes = @list.likes + 1
    @list.save
    redirect_to root_path
  end
 
  	def create
  		@listing = Listing.create(listing_params)
      @listing.likes = 0
  		@listing.update(house_owner_id: current_house_owner.id)

	  	if @listing.save
        redirect_to root_path
	  		#redirect_to house_owner_path(current_house_owner) # need to create these routes & views
	  	else
	      render "new"
	  		flash[:error] = "invalid listing"
	  	end
  	end

  	def delete
    	@list = Listing.find(params[:id])
    	@list.destroy
    	redirect_to root_path
  	end

  	def next
  		self.Listing.find(:first, :conditions => ['id > ?', self.id],:order => 'id')
	end

	def previous
  		self.Listing.find(:first, :conditions => ['id < ?', self.id], :order => 'id desc')
	end
  #private methods go at end of file
  	private 
  		def listing_params
  			params.require(:listing).permit(:title, :description, :address, :price, :lease_term, :photo)
  		end

end
