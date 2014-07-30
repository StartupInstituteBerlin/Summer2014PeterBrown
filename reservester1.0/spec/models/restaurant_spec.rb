require 'spec_helper'

describe Restaurant do
  describe "::search" do
    context "when searching by category" do
      before(:each) do
        @restaurant = FactoryGirl.create(:restaurant)
        @restaurant2 = FactoryGirl.create(:restaurant)
        @restaurant3 = FactoryGirl.create(:restaurant)
      end


    	it "returns restaurants matching the category supplied by search keyword" do
        @restaurant = FactoryGirl.create(:restaurant)
        @restaurant2 = FactoryGirl.create(:restaurant)
        @category = FactoryGirl.create(:category)
    	  @category2 = FactoryGirl.create(:category)
        @restaurant.categories << @category
        @restaurant2.categories << @category2

        Restaurant.search_for([@category.name]).should == [@restaurant] 

      end
      it "returns restaurants that matches one of the two keywords (by category and name)" do
      	# find a better way to DRY code maybe before(:each) block
      	@category = FactoryGirl.create(:category)
      	@category2 = FactoryGirl.create(:category)
      	@restaurant.categories += [@category, @category2]

      	Restaurant.search_for([@category.name, @restaurant2.name]).should == [@restaurant2, @restaurant]
      end
      it "does not return duplicates " do
        @category = FactoryGirl.create(:category)
        @restaurant.categories << @category

        Restaurant.search_for([@category.name, @restaurant.name]).should == [@restaurant]

      end

    end

    context "when searching by restaurant name" do
      before(:each) do
        @restaurant2 = FactoryGirl.create(:restaurant)
        @restaurant = FactoryGirl.create(:restaurant, { name: "Chuck's Place" })
     
        @restaurant3 = FactoryGirl.create(:restaurant)
      end

      it "matches a restaurant by name" do
        Restaurant.search_for([@restaurant.name]).should == [@restaurant]
      end

      it "matches a restaurant by partial name" do
        Restaurant.search_for(["Chuck"]).should == [@restaurant]
      end
      
      it "matches a restaurant by partial name (case insensitive)" do
        Restaurant.search_for(["chuck"]).should == [@restaurant]
      end

      it "returns an empty list when no match is there" do
        Restaurant.search_for(["Mcdonalds"]).should == []
      end
    end
  end
end
