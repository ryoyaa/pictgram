class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.new
    comment.user_id = current_user.id
    comment.topic_id = params[:comment][:topic_id]
    comment.comment_body = params[:comment][:comment_body]
    if comment.save
      redirect_to topics_path, notice: 'コメントを送信しました'
    else
      redirect_to topics_path, notice: 'コメントの送信に失敗しました'
    end
  end


end
