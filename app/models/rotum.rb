class Rotum < ApplicationRecord

   belongs_to :doctor
#   belongs_to :doctor, class_name: 'Doctor', foreign_key: 'Second_on_call'
#   belongs_to :doctor, class_name: 'Doctor', foreign_key: 'First_on_call_nights'


 belongs_to :location
 validates :location_id, presence: true
default_scope -> { order(:location_id) }
end
