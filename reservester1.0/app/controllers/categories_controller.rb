class CategoriesController < ApplicationController
	def index
		@categories = params[:q] ? Category.search_for(params[:q]) : Category.all
	end
	
	def show 
		@category = Category.find(params[:id])
  		@restaurants = @category.restaurants
  		@category_name = @category.name
	end
	
end
