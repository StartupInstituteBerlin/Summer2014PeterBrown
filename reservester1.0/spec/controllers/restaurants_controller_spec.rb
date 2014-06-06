require 'spec_helper'

describe RestaurantsController do
  describe "#index" do
  	it "returns all restaurants" do
  		r = FactoryGirl.create(:restaurant)
  		get :index
  		assigns(:restaurants).should == [r]
  	end
  end
  describe "#show" do
  	it "return a specific restaurant by id" do
  		r = FactoryGirl.create(:restaurant)

  		# FIXME: how to supply the restaurant id to the get request?
  		get :show, id: r.id
  		assigns(:restaurant).should == r
  	end
  end
end
