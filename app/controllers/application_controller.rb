class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :prepare_unobtrusive_flash
  before_action :prepare_meta_tags, if: "request.get?"

  private

  def prepare_meta_tags(options={})
    site = ''
    title = '백남기 농민 추모 페이지'
    desc = '선한 국민, 의로운 농민. 백남기 님을 함께 추모해 주세요.'
    set_meta_tags({
      site:        site,
      title:       title,
      reverse:     true,
      image:       'http://thelastletter.co/social.png',
      description: desc,
      keywords:    '백남기',
      canonical:   root_url,
      og: {
        url: root_url,
        site_name: site,
        title: title,
        image: 'http://thelastletter.co/social.png',
        description: desc,
        type: 'website'
      }
    })
  end

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
