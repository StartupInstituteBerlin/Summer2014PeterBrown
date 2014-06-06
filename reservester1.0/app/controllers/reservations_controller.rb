class ReservationsController < ApplicationController
	def create
		# FIXME: reservation is always initialized with empty values, why is that?
		@reservation = Reservation.new(reservation_params)
		@reservation.restaurant = Restaurant.find(params[:reservation][:restaurant_id])
		if @reservation.save
			redirect_to @reservation.restaurant
		else
			render 'restaurants/reservation'
		end
	end

	private
	def reservation_params
		params.require(:reservation).permit(:description, :date, :email, :restaurant_id)
	end
end
