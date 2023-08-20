class ComicsController < ApplicationController
  before_action :require_permission, only:[:edit, :update, :destroy]

  def new
    @comic = Comic.new
  end

  def index
    @comic = Comic.all
    @user = current_user
  end

  def show
    @comic = Comic.find(params[:id])
    @user = @comic.user
  end

  def edit
    @comic = Comic.find(params[:id])
    @comic.save
  end

  def create
    @comic = current_user.comics(comic_params)
  end

  def update
    @comic = Comic.find(params[:id])
  end

  def destroy
    @comic = Comic.find(params[:id])
  end

  private
end
