class CartoonistsController < ApplicationController
  def index
    @cartoonists = Cartoonist.all
  end

  def show
    @cartoonist = Cartoonist.find(params[:id])
  end
end
