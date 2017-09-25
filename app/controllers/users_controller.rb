class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  protected

  def topic_params
        params.require(:topic).permit(:title, :content, :image, tasks_attributes: [:name, :memo, :id])
  end
end