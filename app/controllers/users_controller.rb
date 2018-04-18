class UsersController < ApplicationController

  def homepage
  end

  def new
  end

  def create
    redirect_to homepage_path
  end


end
