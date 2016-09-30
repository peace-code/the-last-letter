class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to root_path(anchor: 'comments-section')
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:nickname, :body)
  end
end