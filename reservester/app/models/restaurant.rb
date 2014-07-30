class Restaurant < ActiveRecord::Base
	belongs_to :user
	has_many :reservations, :dependent => :destroy
	has_and_belongs_to_many :categories
	has_many :stars
	has_many :starred_by, through: :stars, source: :user
	has_many :users, through: :reservations

	validates :name, :user, presence: true
	
	accepts_nested_attributes_for :reservations
    
    mount_uploader :photo, PhotoUploader
    mount_uploader :menu, PDFUploader
end
