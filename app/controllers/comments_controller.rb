class CommentsController < ApplicationController
  def create
    user = current_user
    # binding.pry
    topic = Topic.find(topic_params[:topic_id])
    comment = Comment.new(user_id: user.id, topic_id: topic.id, comment: comment_params[:comment])
    # binding.pry
    
    if comment.save
      if params[:button_id] == 'show'
        redirect_to comment_show_path(topic_id: params[:topic_id]), success: 'コメントを投稿しました'
      else
        redirect_to topics_path, success: 'コメントを投稿しました'
      end
    else
      if params[:button_id] == 'show'
        redirect_to comment_show_path(topic_id: params[:topic_id]), danger: 'コメント投稿に失敗しました'
      else
        redirect_to topics_path, success: 'コメントを投稿しました'
      end
    end
  end
  
  def show
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new
  end
  
  private
  def comment_params
    params.require(:comment).permit(:comment)
  end

  def topic_params
    params.require(:comment).permit(:topic_id)
  end
end
