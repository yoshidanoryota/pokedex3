class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to article_path(@comment.article)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to article_path(@comment.article)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_text).merge(user_id: current_user.id, article_id: params[:article_id])
  end
end
