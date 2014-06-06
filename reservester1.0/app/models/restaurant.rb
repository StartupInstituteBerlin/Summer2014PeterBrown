class Restaurant < ActiveRecord::Base
	# attr_accessible :address, :description, :name, :phone, :photo, :photo_cache, :owner_id
	mount_uploader :photo, PhotoUploader 
	belongs_to :owner
	has_many :reservations
end
