class CommentsController < ApplicationController
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