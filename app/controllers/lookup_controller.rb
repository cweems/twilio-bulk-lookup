require 'twilio-ruby'

class LookupController < ApplicationController
    def run
        Contact.find_each do |c|
            LookupRequestJob.perform_later(c)
        end

        redirect_to admin_contacts_path
    end
end
