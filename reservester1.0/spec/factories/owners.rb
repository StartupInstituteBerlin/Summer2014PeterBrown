# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
  	email {Faker::Internet.email()}
  	password "foobarbars"
  	password_confirmation "foobarbars"
  end
end