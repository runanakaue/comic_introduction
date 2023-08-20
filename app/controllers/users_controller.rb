class UsersController < ApplicationController
  def index
    @user = User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @comics = @user.comics
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
  end

  private


end
