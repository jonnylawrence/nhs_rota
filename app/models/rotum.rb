class Rotum < ApplicationRecord

belongs_to :First_on_call_day, :class_name => "Doctor"
belongs_to :Second_on_call, :class_name => "Doctor"
belongs_to :First_on_call_nights, :class_name => "Doctor"

 belongs_to :location
 validates :location_id, presence: true
default_scope -> { order(:location_id) }
end
