class UsersController < ApplicationController

  def homepage
  end

  def new
  end

  def create
    @user = User.create()
    redirect_to "/homepage"
  end

  def user_params
    
  end

end
