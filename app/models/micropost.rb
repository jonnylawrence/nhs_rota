class Micropost < ApplicationRecord
  belongs_to :rotum
  default_scope -> { order(created_at: :desc) }
  # validates :rotum_id, presence: true
end
