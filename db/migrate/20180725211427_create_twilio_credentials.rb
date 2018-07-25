class CreateTwilioCredentials < ActiveRecord::Migration[5.2]
  def change
    create_table :twilio_credentials do |t|
      t.string :account_sid
      t.string :auth_token
      t.timestamps
    end
  end
end
