class Artist < ActiveRecord::Base
	has_many :paintings
	has_many :museums, through: :paintings

  validates :name, :dob, :image, :nationality, presence: true
end
