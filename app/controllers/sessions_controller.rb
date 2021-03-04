class SessionsController < ApplicationController
  def omniauth
    user = User.find_or_create_omni(request.env['omniauth.auth'])

    if user.valid?
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:message] = user.errors.full_messages.join(", ")
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:message] = 'incorrect email/password'
      render 'new'
    end
  end


  def destroy
    session.delete("user_id")
    redirect_to root_path
  end




end
