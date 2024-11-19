# app/models/gps_error.rb
class GpsError < ApplicationRecord
  validates :error_message, presence: true
end
