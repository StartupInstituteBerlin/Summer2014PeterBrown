class ReservationsController < ApplicationController
	def create
		# FIXME: reservation is always initialized with empty values, why is that?
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reservation = @restaurant.reservation.build(reservation_params)
		# @reservation = Reservation.new(reservation_params)
		# @reservation.restaurant = Restaurant.find(params[:reservation][:restaurant_id])
		if @reservation.save
			# redirect_to @reservation.restaurant
			redirect_to restaurants_path(@restaurant)
		else
			# render 'restaurants/reservation'
			render 'restaurant/show'
		end
	end

	private
	def reservation_params
		params.require(:reservation).permit(:description, :date, :email, :restaurant_id)
	end
end
