class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to favorite_thing_path(@comment.favorite_thing)
    else
      @favorite_thing = @comment.favorite_thing
      @comments = @favorite_thing.comments
      render 'favorite_things/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, favorite_thing_id: params[:favorite_thing_id])
  end
end
