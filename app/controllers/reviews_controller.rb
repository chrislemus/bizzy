class ReviewsController < ApplicationController
  before_action :verify_user, only: [:new, :create]
  layout "forms", only: [:new, :create]

  def index
    @business = Business.find(params[:business_id])
    @reviews = @business.reviews
  end

  def new
    # byebug
    @business = Business.find(params[:business_id])
    @review = Review.new(business: @business)
    # @review = @business.reviews.build
    # byebug
  end
  
  def create
    # byebug
    #validateions for empty field!!
    #validateions for empty field!!
    #validateions for empty field!!
    #validateions for empty field!!
    @business = Business.find(params[:business_id])

    user = User.find(session[:user_id])

    @review = Review.new(review_params)
    # byebug
    @review.user = user
    if @review.save
      redirect_to business_reviews_path(params[:business_id])
    else
      flash[:message] = @review.errors.full_messages.join(", ")
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :business_id, :content)
  end

  def verify_user
    if !logged_in
      flash[:message] = 'Please sign in to add a new review'
      redirect_to signin_path 
    end

  end
end
