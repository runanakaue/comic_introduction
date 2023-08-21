class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
    @user = current_user
  end

  def show
    @publisher = Publisher.find(params[:id])
    @user = @publisher.user
  end
end
