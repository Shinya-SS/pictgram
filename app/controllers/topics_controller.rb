class TopicsController < ApplicationController
  
  before_action :set_topics, only: [:index]
  before_action :login_chk, only: [:new]
  
  def index
    @comment = Comment.new
    # binding.pry
  end
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = current_user.topics.new(topic_params)
    
    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  private
  def topic_params
    params.require(:topic).permit(:image, :description)
  end
  
  def set_topics
    @topics = Topic.all.includes(:favorite_users)
  end
  
  def login_chk
    unless logged_in?
      redirect_to login_path, danger: 'ログインされていません'
    end
  end
end
