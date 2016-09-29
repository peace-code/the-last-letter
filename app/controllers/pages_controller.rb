class PagesController < ApplicationController
  def home
    @comments = Comment.limit(50)
    @comment = Comment.new
  end
end
