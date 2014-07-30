class OwnersController < ApplicationController
	before_action :authenticate_owner!
	
end
