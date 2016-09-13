class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create

    User.create(user_params)

    #returns boolean, sends to user class .self
    user = User.authenticate(user_params)

    if user 
      session[:user_id] = user.id
      flash[:success] = "User is logged in"
      redirect_to root_path
    else
      flash[:danger] = "Credentials invalid. Try Again!"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    Angry.delete_all
    Happy.delete_all
    Sad.delete_all
    Calm.delete_all
    flash[:success] = "User is logged out"
    redirect_to root_path
  end

  ######### create private params
  private

  def user_params
    params.require(:user).permit(:email, :password, :username)
  end
end
