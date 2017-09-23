class UsersController < ApplicationController
  before_action :task_params

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  protected

  def task_params
        params.require(:task).permit(
          :task_name,
          tasktypes_attributes: [:id, :task_name, :_destroy]
        )
  end
end
