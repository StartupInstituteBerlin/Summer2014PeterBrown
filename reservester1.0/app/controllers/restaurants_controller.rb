class RestaurantsController < ApplicationController
  before_action :authenticate_owner!, :except => [:index, :show]
  # before_action :require_restaurent_owner_match!, :only => [:edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find params[:id]
  end

  def new
    @restaurant = Restaurant.new
    @owner = Owner.find(params[:owner_id])
  end

  def create
    @restaurant = Restaurant.new restaurant_params

    if @restaurant.save
        redirect_to @restaurant
    else
      render action: 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find params[:id]

    if @restaurant.update restaurant_params
      redirect_to @restaurant
    else
      render action: 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find params[:id]
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :phone, :address, :photo, :photo_cache, :owner)
  end
end