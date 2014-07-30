class RestaurantsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  before_filter :require_restaurant_user_match!, :only => [:edit, :update, :destroy]
  
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user_id = current_user.id

    if @restaurant.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    params[:restaurant][:category_ids] ||= []
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
 
    redirect_to restaurants_path
  end

  def index
    @restaurants = Restaurant.all
    @categories = Category.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    @reservation = Reservation.new
    @reservation.restaurant = @restaurant
    if current_user
      @starred = current_user.stars.exists?(:restaurant_id => @restaurant.id)
    else
      @starred = false
    end
  end

  def star
    type = params[:type]
    restaurant = Restaurant.find(params[:id])

    if type == "star"
      current_user.starred_restaurants << restaurant
      redirect_to :back, notice: 'You starred ' + restaurant.name
    else
      current_user.stars.where(:restaurant_id => restaurant.id).destroy_all
      redirect_to :back, notice: 'You unstarred ' + restaurant.name
    end
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :address, :phone, :photo, :menu, :monday_open_at, :monday_close_at, :tuesday_open_at, :tuesday_close_at, :wednesday_open_at, :wednesday_close_at, :thursday_open_at, :thursday_close_at, :friday_open_at, :friday_close_at, :saturday_open_at, :saturday_close_at, :sunday_open_at, :sunday_close_at, :category_ids => [])
    end

end
