class CreateGpsData < ActiveRecord::Migration[7.2]
  def change
    create_table :gps_data do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
