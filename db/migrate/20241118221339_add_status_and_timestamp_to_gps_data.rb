class AddStatusAndTimestampToGpsData < ActiveRecord::Migration[7.2]
  def change
    add_column :gps_data, :status, :string
    add_column :gps_data, :timestamp, :string
  end
end
