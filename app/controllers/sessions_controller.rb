class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])

    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to '\homepage'
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete :user_id
    redirect_to new_session_path
  end
end
