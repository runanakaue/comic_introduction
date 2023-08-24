class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
    @user = current_user
  end

  def show
    @publisher = Publisher.find(params[:id])
    @user = current_user
    @publishers = @user.publishers
  end
end
