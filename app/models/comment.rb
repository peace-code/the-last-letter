class Comment < ApplicationRecord
  has_many :reports, dependent: :destroy
  default_scope { order("id DESC") }

  REPORT_LIMIT = 10

  def screened?
    reports_count >= REPORT_LIMIT
  end
end
