class UsersController < ApplicationController

  layout "forms", only: [:new, :create]

  def new
    @user = User.new
    render layout: "forms"
  end

  def create
    # byebug
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else

      flash.now[:message] = @user.errors.full_messages.join(', ')
      render "new"

      
    end
  end

  # def show
  #   @user = User.find_by(id: params[:id])
  # end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :email,:password)
  end
end
