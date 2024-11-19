module Api
  module V1
    class GpsController < ApplicationController
      skip_before_action :verify_authenticity_token

      def create
        if params[:latitude].present? && params[:longitude].present?
          GpsData.create!(
            latitude: params[:latitude],
            longitude: params[:longitude],
            status: params[:status],
            timestamp: params[:timestamp]
          )
          render json: { status: "success", message: "GPS data received successfully" }, status: :ok
        else
          render json: { status: "error", message: "Invalid or missing data" }, status: :unprocessable_entity
        end
      end
    end
  end
end
