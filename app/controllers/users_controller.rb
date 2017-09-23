class UsersController < ApplicationController
  before_action :task_params

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  protected

  def topic_params
        params.require(:task).permit(
          :title, :content,
          tasks_attributes: [:id, :task_name, :memo, :_destroy]
        )
  end
end