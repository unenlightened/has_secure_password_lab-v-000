class UsersController < ApplicationController

  def homepage
  end

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:id] = @user.id
      redirect_to "/homepage"
    else
      redirect_to login_path
    end
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
