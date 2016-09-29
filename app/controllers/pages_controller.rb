class PagesController < ApplicationController
  def home
    @comments = Comment.page(params[:page])
    @comment = Comment.new
  end
end
