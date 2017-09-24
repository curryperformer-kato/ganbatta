class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  protected

  def topic_params
        params.require(:topic).permit(
          :title, :content,
          tasks_attributes: [:id, :task_id, :name, :memo, :_destroy]
        )
  end
end