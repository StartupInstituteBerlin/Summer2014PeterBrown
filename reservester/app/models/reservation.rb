class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	validates :email, uniqueness: { scope: :requested_date_time,
    message: "User can only have one reservation for the same restaurant for the same day" }
 	validate :reservations_does_not_exceed_cap, on: :create
 	validate :reservation_time, on: :create
 	validate :user_does_not_have_duplicate_reservation, on: :create

	def user_does_not_have_duplicate_reservation
		duplicate_reservations = Reservation.where(email: self.email, restaurant_id: self.restaurant.id, requested_date_time: (self.requested_date_time.midnight - 1.day)..self.requested_date_time.midnight)
		if duplicate_reservations.count > 0
			 errors.add(:reservation, "can't be made for same restaurant on same day")
		end
	end

	def reservations_does_not_exceed_cap
		restaurant = Restaurant.find(self.restaurant_id)

		if restaurant.reservations.count + 1 > restaurant.max_reservations
			 errors.add(:reservation, "can't exceed max of " + restaurant.max_reservations.to_s)
		end
	end

	#TODO: Find a better way to calculate this
	def reservation_time
		restaurant = Restaurant.find(self.restaurant_id)
		day = self.requested_date_time.strftime("%A").downcase

		open_time = get_time(restaurant, day, "open")
		close_time = get_time(restaurant, day, "close")
		check_if_restaurant_closed(open_time)

		if open_time
			open_time = convert_time_to_decimal(open_time)
			close_time = convert_time_to_decimal(close_time)
			close_time = close_time + 24 if close_time < open_time # Add a full day if close time is less than open time
			requested_time = convert_time_to_decimal(self.requested_date_time)
			latest_reservation_time = close_time - 0.5 # Subtract half hour from close time
			check_reservation_during_allowed_hours(open_time, latest_reservation_time, requested_time)
		end
	end

	private 
	def get_time(restaurant, day, type)
		property_name = day + "_" + type + "_at"
		restaurant.send(property_name)
	end

	def convert_time_to_decimal(time)
		return time.hour + time.min / 60
	end

	def check_if_restaurant_closed(open_time)
		unless open_time
			errors.add(:reservation, "can not be made on a day the restaurant is closed")
		end
	end

	def check_reservation_during_allowed_hours (open_time, latest_reservation_time, requested_time)
		unless (open_time..latest_reservation_time).include?(requested_time)
			errors.add(:reservation, "must be made during open hours and 30 minutes before closing")
		end
	end

end
