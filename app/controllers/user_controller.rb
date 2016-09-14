class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    u = User.find(params[:id])

    u.update(user_params)
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
