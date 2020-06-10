class ReviewsController < ApplicationController
  before_action :set_review_params

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(set_review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  private

  def set_review_params
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
