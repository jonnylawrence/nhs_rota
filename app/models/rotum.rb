class Rotum < ApplicationRecord
 belongs_to :location
 validates :location_id, presence: true
default_scope -> { order(:location_id) }
end