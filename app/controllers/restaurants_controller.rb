class RestaurantsController < ApplicationController
  before_action :set_restaurant_params, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.save

    redirect_to restaurants_path
  end

  def edit
  end

  def update
    @restaurant.update

    redirect_to edit_restaurant_path
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  def set_restaurant_params
    @restaurant = Restaurant.find(params[:id])
  end
end
