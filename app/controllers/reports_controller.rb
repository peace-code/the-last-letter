class ReportsController < ApplicationController
  def create
    @comment = Comment.find params[:comment_id]
    @report = Report.new(comment: @comment, token: needle_token)
    if @report.save
      flash[:success] = t('messages.report_success')
    else
      errors_to_flash(@report)
    end
    redirect_to root_path
  end
end
