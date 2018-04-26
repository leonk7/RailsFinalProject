class HouseSeekerController < ApplicationController

	def index
    	@house_seekers = HouseSeekers.all
  	end

	  def show
	    @house_seeker = HouseSeeker.find(params[:id])
	  end
end
