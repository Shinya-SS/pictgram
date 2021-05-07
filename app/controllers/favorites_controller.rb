class FavoritesController < ApplicationController
  
  before_action :set_favorite, only: [:create, :delete]
  
  def index
    @favorite_topics = current_user.favorite_topics
    # binding.pry
  end

  def create
    # favorite = Favorite.new
    # favorite.user_id = current_user.id
    # favorite.topic_id = params[:topic_id]
    user = current_user
    topic = Topic.find(params[:topic_id])
    favorite = Favorite.create(user_id: user.id, topic_id: topic.id)
    
    favorite.save
    # if favorite.save
    #   flash.now[:success] = 'お気に入りに登録しました'
    #   render :index
    # else
    #   redirect_to topics_path, danger: 'お気に入り登録に失敗しました'
    # end
  end
  
  def delete
    # binding.pry
    # if Favorite.find_by(topic_id: params[:topic_id]).delete
    #   redirect_to topics_path, success: 'お気に入り削除に成功しました。'
    # else
    #   flash.now[:danger] = "お気に入り解除に失敗しました。"
    #   render :index
    # end
    user = current_user
    topic = Topic.find(params[:topic_id])
    favorite = Favorite.find_by(user_id: user.id, topic_id: topic.id)

    favorite.delete
    # if favorite.delete
    #   flash.now[:success] = 'お気に入り削除に成功しました。'
    #   render :index
    # else
    #   flash.now[:danger] = "お気に入り解除に失敗しました。"
    #   render :index
    # end
  end
  
  private
  
  def set_favorite
    @topic = Topic.find(params[:topic_id])
  end
  # def set_favorite
  #   if params[:topic_id] != nil
  #     @topic = Topic.find(params[:topic_id])
  #   else
  #     @topic = nil
  #   end
  # end
end
