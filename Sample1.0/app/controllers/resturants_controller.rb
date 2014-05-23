class ResturantsController < ApplicationController
	def index
		@resturant = Resturant.all
	end
	def new
		@resturant =Resturant.new
	end
	def create
		@resturant = Resturant.create!(permited_params)
	end
	def show
	end
	def update
	end
	def edit
	end
	def destroy
	end
	private
	def set_restuarant
      @resturant = Resturant.find(params[:id])
    end
	def permited_params
		params.require(:resturant).permit(:name, :description)
	end

end
