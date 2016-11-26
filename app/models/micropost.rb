class Micropost < ApplicationRecord
  audited
  belongs_to :rotum
  belongs_to :doctor
  default_scope -> { order(created_at: :desc) }
  # validates :rotum_id, presence: true
end
