require 'spec_helper'
#TODO find diffrent place for include Devise::TestHelpers
include Devise::TestHelpers

#TODO add before each block to allow 
describe RestaurantsController do
  describe "#index" do
  	xit "returns all restaurants" do
  		r = FactoryGirl.create(:restaurant)
  		get :index
  		assigns(:restaurants).should == [r]
  	end
  end
  describe "#show" do
  	it "return a specific restaurant by id" do
  		r = FactoryGirl.create(:restaurant)
  		get :show, id: r.id
  		assigns(:restaurant).should == r
  	end
  end

  describe "#update" do
    before(:each) do
      @r = FactoryGirl.create(:restaurant)
      @category = FactoryGirl.create(:category)
      @category2 = FactoryGirl.create(:category)
      @r.categories = [@category, @category2]

    end

    it "adds new category" do 
      
    end
    it "removes categories" do
      @r.categories.should == [@category, @category2]
      put :update, {:restaurant => {:category_ids => [] }, :id =>  @r.id }
      # assigns(:restaurant) access the @restaurant in the restaurant controller
      assigns(:restaurant).id.should == @r.id
      assigns(:restaurant).categories.should == []

     
      #do @r.reload to reload an instance of the database chache.
      #same as @r = Restaurant.find(@r.id)
      @r.reload


      @r.categories.should == []

    end
    it "updates the restaurant name" do
      put :update,  {:restaurant => {:name => "Burgers Berlin"}, :id => @r.id }
      @r.reload
      @r.name.should == "Burgers Berlin"
      
    end
  end
end
