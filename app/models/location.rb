class Location < ApplicationRecord
  audited
  has_one :rotum
end
