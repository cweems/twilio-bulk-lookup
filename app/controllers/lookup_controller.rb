require 'twilio-ruby'

class LookupController < ApplicationController
    def run
        @client = Twilio::REST::Client.new(TwilioCredential.first.account_sid, TwilioCredential.first.auth_token)
        
        Contact.find_each do |c|
            puts 'RUNNING'
            begin
                
                lookup_result = @client.lookups.phone_numbers(c.raw_phone_number).fetch(type: 'carrier')

                c.update(
                    formatted_phone_number: lookup_result.phone_number,
                    mobile_network_code: lookup_result.carrier['mobile_network_code'],
                    error_code: lookup_result.carrier['error_code'],
                    mobile_country_code: lookup_result.carrier['mobile_country_code'],
                    carrier_name: lookup_result.carrier['name'],
                    device_type: lookup_result.carrier['type'],
                )
            rescue Twilio::REST::RestError
                c.update(error_code: 'Invalid number')
            end
        end

        redirect_to admin_contacts_path
    end
end
