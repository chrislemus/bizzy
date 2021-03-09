class BusinessesController < ApplicationController
  layout "forms", only: [:new, :create, :edit]

  def index
    @businesses = Business.all
  end

  def show
  end

  def business_listings
    if current_user.owner?
      @businesses = current_user.businesses
    else
      redirect_to new_business_path
    end
    
  end

  def destroy
    Business.delete(params[:id])
    redirect_to business_listings_path
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    business = Business.find_by(id: params[:id])
    business.update(business_params)
    redirect_to business_listings_path
  end

  def new
    @business = Business.new(owner: current_user)
  end

  def create
    @business = Business.new(business_params)
    @user = User.find(params[:business][:owner_id])
    if @business.save
      redirect_to business_listings_path
    else
      flash.now[:message] = @business.errors.full_messages.join(', ')
      render 'new'
    end
  end

  private

  def business_params
    params.require(:business).permit(
      :owner_id, :category_id, :name, :phone, :address, :city, :state, :zip,
      :monday_open, :monday_close, :tuesday_open, :tuesday_close, :wednesday_open, :wednesday_close,
      :thursday_open, :thursday_close, :friday_open, :friday_close, :saturday_open, :saturday_close,
      :sunday_open, :sunday_close
    )
  end
end




