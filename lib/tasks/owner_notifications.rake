namespace :digest  do
  desc "generates and sends an email each Owner with the pending Reservations for each of their Restaurants and Reservations that are scheduled for the current day"
  task :owner_notifications do
  	ReservationMailer.owner_notification.deliver
  end
end