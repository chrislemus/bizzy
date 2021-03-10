class ReviewsController < ApplicationController
  before_action :verify_user, only: [:new, :create]
  layout "forms", only: [:new, :create]

  def index
    @business = Business.find(params[:business_id])
    @reviews = @business.reviews
  end

  def new
    @business = Business.find(params[:business_id])
    @review = Review.new(business: @business)
  end

  def destroy
    Review.delete(params[:id])
    router(user_reviews_path, :alert, 'your review has been deleted')
  end

  def user_reviews
    redirect_to root_path unless logged_in
    @reviews = current_user.reviews
  end
  
  def create
    @business = Business.find(params[:business_id])
    user = User.find(session[:user_id])
    @review = Review.new(review_params)
    @review.user = user
    if @review.save
      router(business_reviews_path(params[:business_id]), :alert, "Congrats! Your review for #{@business.name} has been added")
    else
      router('new', :message, @review.errors.full_messages.join(", "))
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :business_id, :content)
  end

  def verify_user
    if !logged_in
      router(signin_path, :message, 'Please sign in to add a new review')
    end
  end
end
