class UsersController < ApplicationController
	before_filter :authenticate_user!
  	def owner_dashboard
  		@user = current_user
  		@restaurants = current_user.restaurants
  	end

    def patron_dashboard
      @user = current_user
      @restaurants = current_user.starred_restaurants
    end

  	def owner?()
	  	isOwner = false
	  	if self.role == "owner"
	  		isOwner = true
	  	end
  		isOwner
  	end

  	def patron?()
	  	isPatron = false
	  	if self.role == "patron"
	  		isPatron = true
	  	end
  		isPatron
  	end
end
