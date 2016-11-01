class Rotum < ApplicationRecord
 belongs_to :location
 validates :location_id, presence: true
end
