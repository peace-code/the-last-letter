class Comment < ApplicationRecord
  default_scope { order("id DESC") }
end
