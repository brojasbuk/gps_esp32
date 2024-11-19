# app/controllers/gps_controller.rb
class GpsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if params[:status] == "No GPS data"
      GpsData.create(
        latitude: nil,
        longitude: nil,
        status: params[:status],
        timestamp: params[:timestamp]
      )
    else
      GpsData.create(
        latitude: params[:latitude],
        longitude: params[:longitude],
        status: params[:status]
      )
    end

    render json: { status: "success", message: "Data received successfully" }, status: :ok
  end
end
