# require 'devise'

class Owner < ActiveRecord::Base
  
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :restaurants

  has_many :restaurants
  has_many :reservations, through: :restaurants

  # validates :name, :email, presence: true
  # validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
