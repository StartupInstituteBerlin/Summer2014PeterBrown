require 'faker'
FactoryGirl.define do
	factory :restaurant do
		name "Restaurant"
		address "Dircksenstr. 7"
		# making owner in factory so validates presence: true 
		# Restaurant model line 4
		association :owner, {factory: :owner } 
	end

	factory :category do
      sequence(:name)  { |n| "Category Nr. #{n}" }
	end		
end