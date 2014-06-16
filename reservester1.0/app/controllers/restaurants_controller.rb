class RestaurantsController < ApplicationController
  # before_action :authenticate_owner!, :except => [:index, :show]
  # before_action :require_restaurent_owner_match!, :only => [:edit, :update, :destroy]

  def index
    
    @restaurants = Restaurant.all
    @categories = Category.all

  end

  def show
    @restaurant = Restaurant.find params[:id]
    
    @reservation = Reservation.new
    @reservation.restaurant = @restaurant

  end

  def new
    @restaurant = Restaurant.new
    
  end

  def create
    raise params.inspect
    @restaurant = Restaurant.new restaurant_params
    @restaurant.owner_id = current_owner.id

    if @restaurant.save
        redirect_to action: "index"
    else
      render 'new'
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
      render 'edit'
    end
  end
 

  def destroy
    @restaurant = Restaurant.find params[:id]
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :phone, :address, :photo, :photo_cache, :owner_id, :category_ids => [])
  end
end








