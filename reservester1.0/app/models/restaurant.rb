class Restaurant < ActiveRecord::Base
	attr_accessible :address, :description, :name, :phone, :photo, :photo_cache, :owner
	mount_uploader :photo, PhotoUploader 
	belongs_to :owner
end
