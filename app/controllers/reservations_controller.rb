
class ReservationsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.build(reservation_params)

    if @reservation.save
      redirect_to restaurants_path(@restaurant)
      ReservationMailer.reservation_notification(@reservation).deliver
    else
      render :action => "../restaurants/show"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
 
    redirect_to restaurants_path
  end

  def confirm
    @reservation = Reservation.find(params[:id])

    @reservation.status = "Confirmed"
    @reservation.status
    @reservation.save
    redirect_to :back

  end

  private
  def reservation_params
    params.require(:reservation).permit(:email, :requested_date_time, :message)
  end
end
