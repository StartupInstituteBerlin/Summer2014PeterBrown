class ReservationMailer < ActionMailer::Base
  default from: "from@example.com"

  def reservation_notification(reservation)
  	@reservation = reservation

    mail(to: @reservation.email, subject: 'Your Reservation Request')
  end

end