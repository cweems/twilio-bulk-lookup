class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :raw_phone_number, null: false
      t.string :formatted_phone_number
      t.string :mobile_network_code
      t.string :error_code
      t.string :mobile_country_code
      t.string :carrier_name
      t.string :device_type
      t.timestamps
    end
  end
end
