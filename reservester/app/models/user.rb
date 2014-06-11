class User < ActiveRecord::Base
  has_many :restaurants
  has_many :stars
  has_many :starred_restaurants, :through => :stars, :source => :restaurant

  validates :name, :email, presence: true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def owner?
  	isOwner = false
  	if self.role == "owner"
  		isOwner = true
  	end
	end

	def self.patron?
  	isPatron = false
  	if self.role == "patron"
  		isPatron = true
  	end
	end
end