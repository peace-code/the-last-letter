class Report < ApplicationRecord
  belongs_to :comment, counter_cache: true
  validates :comment, uniqueness: {scope: [:token]}
end
