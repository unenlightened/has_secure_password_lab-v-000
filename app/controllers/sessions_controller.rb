class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
byebug
    session[:user_id] = @user.id if @user.authenticate(params[:password])
  end

  def destroy
  end
end
