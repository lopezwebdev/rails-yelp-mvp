class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(:params[:restaurant_id])
    @restaurant = Review.new
  end
  def create
    @restaurant = Restaurant.find(:params[:restaurant_id])
    @restaurant = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to_restaurant_path(@restaurant)
    else
      render 'new', status: :unprocessable_entity
    end
  end
end
