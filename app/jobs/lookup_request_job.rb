class LookupRequestJob < ApplicationJob
  queue_as :default

  def perform(contact)
    begin
      @client = Twilio::REST::Client.new(TwilioCredential.first.account_sid, TwilioCredential.first.auth_token)
      lookup_result = @client.lookups.phone_numbers(contact.raw_phone_number).fetch(type: 'carrier')
        contact.update(
            formatted_phone_number: lookup_result.phone_number,
            mobile_network_code: lookup_result.carrier['mobile_network_code'],
            error_code: lookup_result.carrier['error_code'],
            mobile_country_code: lookup_result.carrier['mobile_country_code'],
            carrier_name: lookup_result.carrier['name'],
            device_type: lookup_result.carrier['type'],
        )
    rescue StandardError => e
      contact.update(error_code: 'Lookup failed: ' + e.to_s)
    end
  end
end
