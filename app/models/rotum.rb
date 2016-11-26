class Rotum < ApplicationRecord

belongs_to :First_on_call_day, :class_name => "Doctor"
belongs_to :Second_on_call, :class_name => "Doctor"
belongs_to :First_on_call_nights, :class_name => "Doctor"
belongs_to :Consultant, :class_name => "Doctor"
has_many :Microposts, dependent: :destroy

 belongs_to :location
 validates :location_id, presence: true
default_scope -> { order(:location_id) }

def start_time
       self.Date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
end
end
