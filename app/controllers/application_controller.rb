class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :prepare_unobtrusive_flash

  helper_method :needle_token

  private

  def needle_token
    @token ||= cookies.permanent.signed[:needle_token]
    if @token.blank?
      cookies.permanent.signed[:needle_token] = @token = SecureRandom.base58(100)
    end
    @token
  end

  def errors_to_flash(model)
    flash[:notice] = model.errors.full_messages.join('<br>').html_safe
  end
end
