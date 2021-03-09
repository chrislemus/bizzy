class ApplicationController < ActionController::Base
  # protect_from_forgery prepend: true, with: :exception
  protect_from_forgery with: :exception
  # before_action :verified_user
  
  helper_method :current_user, :logged_in

  private

  def logged_in
    !!current_user
    # redirect_to signin_path if !!session[:user_id]
  end
  # def authorized_user
  #   # !!current_user
  #   redirect_to signin_path if !!session[:user_id]
  # end

  # def verified_user
  #   redirect_to signin_path unless user_is_authenticated
  # end

  def current_user
    User.find_by(id: session[:user_id])
  end
end
