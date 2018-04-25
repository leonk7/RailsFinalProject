class HouseOwnerController < ApplicationController
	def index
    	@house_owners = HouseOwners.all
  	end

	  def show
	    @house_owner = HouseOwner.find(params[:id])
	  end

end
