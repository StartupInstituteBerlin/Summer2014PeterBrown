require 'spec_helper'

describe Restaurant do
  describe "::search" do
  	it "searches for stuff" do
      @restaurant = FactoryGirl.create(:restaurant)
      @restaurant2 = FactoryGirl.create(:restaurant)
      @category = FactoryGirl.create(:category)
  	  @category2 = FactoryGirl.create(:category)
      @restaurant.categories << @category
      @restaurant2.categories << @category2



      Restaurant.search_for([@category.id]).should == [@restaurant.categories]
    end
    it "searchs for a two categories" do
    	# find a better way to DRY code maybe before(:each) block
    	@restaurant = FactoryGirl.create(:restaurant)
    	@category = FactoryGirl.create(:category)
    	@category2 = FactoryGirl.create(:category)
    	@restaurant.categories = [@category, @category2]

    	Restaurant.search([@restaurant.id]).should == [@category, @category2]
    
    end

   end
end
