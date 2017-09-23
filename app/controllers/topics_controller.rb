class TopicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.all
    @users = User.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topics_params) #render 'new'に変数を渡すため
    @topic.user_id = current_user.id
    if @topic.save
      redirect_to topics_path, notice: "トピックを作成しました！"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @topic.update(topics_params)
      redirect_to topics_path, notice: "トピックを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_path, notice: "トピックを削除しました！"
  end

  def show
    @new_comment = Comment.build_from(@topic, current_user.id, "")
    @comments = @topic.comments
    Notification.find(params[:notification_id]).update(read: true) if params[:notification_id]
  end

  private
    def topics_params
      params.require(:topic).permit(:title, :content, :image)
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end
end