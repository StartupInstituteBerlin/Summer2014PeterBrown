class CategoriesController < ApplicationController
	def index
		@categories = Category.all 
	end
	
	def show 
		category = Category.find(params[:id])
  		@restaurants = category.restaurants
  		@category_name = category.name
	end
	
end
