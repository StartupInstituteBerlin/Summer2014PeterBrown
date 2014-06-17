require 'spec_helper'
# TODO find a better place to put Devise::TestHelpers
include Devise::TestHelpers

describe CategoriesController do
	describe "#index" do
		it "Returns all the mother loving categories" do
			r = FactoryGirl.create(:category)
			get :index
			assigns(:categories).should == [r]
		end
	end
	# describe "#show" do
	# 	it "should return category by id"
	# 		r = FactoryGirl.create(:category)
	# 		get :show, id: r.id
	# 		assigns(:restaurants).should == [r]
	# 	end
	# end
end





