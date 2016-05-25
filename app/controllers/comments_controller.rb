class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to land_url(@comment.land_id)
    else
      redirect_to land_url(@comment.land_id)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    land_id = @comment.land_id
    @comment.destroy
    redirect_to land_url(land_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :land_id, :user_id)
  end
end
