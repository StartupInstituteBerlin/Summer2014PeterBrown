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
	describe "GET #show" do
		it "should return category by id" do
			r = FactoryGirl.create(:category)
			get :show, id: r.id
			# it should actually == r
			assigns(:category).should == r
		end
		
		it "should render the #show view" do
			r = FactoryGirl.create(:category)
			get :show, id: r
			response.should render_template :show 
		end
	end
end





