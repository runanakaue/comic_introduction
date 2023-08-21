class CartoonistsController < ApplicationController
  def index
    @cartoonists = Cartoonist.all
    @user = current_user
  end

  def show
    @cartoonist = Cartoonist.find(params[:id])
    @user = @cartoonist.user
  end
end
