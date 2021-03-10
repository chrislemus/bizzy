class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorized_user, only: [:destroy, :edit]
  helper_method :current_user, :logged_in

  private

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
