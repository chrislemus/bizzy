class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorized_user, only: [:destroy, :edit]
  helper_method :current_user, :logged_in, :router

  private

  def router(path_or_view, flash_type, flash_msg)
    flash[flash_type] = flash_msg
    if path_exists?(path_or_view)
      redirect_to path_or_view
    else
      render path_or_view
    end
  end

  def path_exists?(path)
    Rails.application.routes.recognize_path(path)
    true
    rescue ActionController::RoutingError
    false
  end

  def logged_in
    !!current_user
  end

  def authorized_user
    obj = controller_path.classify.constantize.find(params[:id])
    owner_id = obj[:user_id] || obj[:owner_id]
    flash[:alert] = 'You are not authorized to access content'
    redirect_to root_path unless owner_id == current_user.id
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
end
