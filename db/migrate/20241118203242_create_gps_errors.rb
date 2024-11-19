class CreateGpsErrors < ActiveRecord::Migration[7.2]
  def change
    create_table :gps_errors do |t|
      t.string :error_message

      t.timestamps
    end
  end
end
