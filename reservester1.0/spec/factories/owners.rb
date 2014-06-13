# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
  	name "Butter Cup"
  	email "princess@example.com"
  	password "foobar"
  	password_confirmation "foobar"
  end
end