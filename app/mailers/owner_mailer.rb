class OwnerMailer < ActionMailer::Base
  default from: "from@example.com"

  def owner_notification
  	@owners = User.where(role: "owner")
  	@owners.each do |owner|
  		restaurants = owner.restaurants.only(:id)
  		restaurants = restaurants.map{|i| i.id}
  		@reservations = Reservation.where(restaurant_id: restaurants, requested_date_time: (Time.now.midnight - 1.day)..Time.now.midnight)

  		mail(to: @owner.email, subject: "Today's Reservations")
  	end
  	
  end

end