class ComicsController < ApplicationController
  before_action :require_permission, only:[:edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update]

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
    if @comic.user != current_user
      redirect_to comics_path
    end
  end


  def create
    @comic = current_user.comics(comic_params)
    if @comic.save
      flash[:notice] = 'Comic was successfully created.'
      redirect_to comic_path(@comic.id)
    else
      @user = current_user
      @comics = Comic.all
      render :index
    end
  end

  def update
    @comic = Comic.find(params[:id])
    if @comic.update(comic_params)
      flash[:notice] = 'Comic was successfully updated.'
      redirect_to comic_path(@comic.id)
    else
      render :edit
    end
  end

  def destroy
    @comic = Comic.find(params[:id])
    if @comic.destroy
      flash[:notice] = 'Comic was successfully destroyed.'
      redirect_to comics_path
    end
  end

  private

  def comic_params
    params.require(:comic).permit(:title, :body)
  end

  def require_permission
    @comic = Comic.find(params[:id])
    if @comic.user != current_user
      redirect_to comics_path, alert: "他人の投稿は編集・削除できません。"
    end
  end

  def authorize_user
    @comic = Comic.find(params[:id])
    unless current_user == @comic.user
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to root_path
    end
  end
end
