class HousesController < ApplicationController
	def index
		@houses = House.all
	end

	def new
		@house = House.new
	end

	def create
	 @house = current_user.houses.create(params.require(:house).permit(:size, :user, :location, :address, :contact ))
  	  if @house.save
   	    redirect_to root_path
  	  else
    	render "new"
  	  end
	end

end