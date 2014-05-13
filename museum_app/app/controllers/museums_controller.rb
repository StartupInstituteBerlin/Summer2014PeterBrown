class MuseumsController < ApplicationController
  before_action :set_museum, only: [:show, :edit, :update]

  def index
  	@museums = Museum.all
  end

  def show
  end

  def new
    @museum = Museum.new
  end

  def create
    @museum = Museum.new(museum_params)
    if @museum.save
      redirect_to @museum
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @museum.update(museum_params)
      redirect_to @museum
    else
      render 'edit'
    end
  end

  private

  def set_museum
    @museum = Museum.find(params[:id])
  end

  def museum_params
    params.require('museum').permit(:name, :city)
  end

end
