# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
    @gps_data = GpsData.order(created_at: :desc).limit(10)
  end

  def gps_data
    @gps_data = GpsData.order(created_at: :desc).limit(10)
    render partial: "gps_data", locals: { gps_data: @gps_data }
  end
end
