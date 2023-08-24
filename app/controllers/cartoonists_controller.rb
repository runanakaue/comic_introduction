class CartoonistsController < ApplicationController
  def index
    @cartoonists = Cartoonist.all
    @user = current_user
  end

  def show
    @cartoonist = Cartoonist.find(params[:id])
    @user = current_user
    @cartoonists = @user.cartoonists
  end
end
