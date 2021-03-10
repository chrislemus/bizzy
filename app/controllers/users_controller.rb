class UsersController < ApplicationController

  layout "forms", only: [:new, :create]

  def new
    @user = User.new
    render layout: "forms"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      router('new', :message, @user.errors.full_messages.join(', '))
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :email,:password)
  end
end
