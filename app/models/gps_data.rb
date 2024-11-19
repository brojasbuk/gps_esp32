# app/models/gps_data.rb
class GpsData < ApplicationRecord
  validates :latitude, :longitude, presence: true
end
