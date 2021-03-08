class ReviewsController < ApplicationController
  # before_action :authorized_user, only: [:new, :create]

  def index
    @business = Business.find(params[:business_id])
    @reviews = @business.reviews
  end

  def new
    # byebug
    @business = Business.find(params[:business_id])
    @review = Review.new(business: @business)
  end
  
  def create
    #validateions for empty field!!
    #validateions for empty field!!
    #validateions for empty field!!
    #validateions for empty field!!
    user = User.find(session[:user_id])
    review = Review.new(review_params)
    review.user = user
    if review.save
      redirect_to business_reviews_path(params[:business_id])
    else
      render 'new'
    end
  end

  private

  def review_params
    params.permit(:review).permit(:rating, :business_id, :content)
  end
end
