class BusinessesController < ApplicationController
  layout "forms", only: [:new, :create, :edit]

  def index
    query = params[:query]
    query = query.downcase if query
    @params = {}
    @params[:query] = params[:query] if params[:query]
    results_per_page = 10
    @current_page = params[:page] ? params[:page].to_i : 1
    @pages_count = Business.page_count(query, results_per_page)
    @businesses = Business.query(query, results_per_page,@current_page)
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
    router(business_listings_path, :alert, 'business listing deleted')
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    business = Business.find_by(id: params[:id])
    business.update(business_params)
    router(business_listings_path, :alert, "changes have been applied to #{business.name}")
  end

  def new
    @business = Business.new(owner: current_user)
  end

  def create
    @business = Business.new(business_params)
    @user = User.find(params[:business][:owner_id])
    if @business.save
      flash[:alert] = "Your new business has been create: #{@business.name}"
      redirect_to business_listings_path
    else
      router('new', :message, @business.errors.full_messages.join(', '))
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




