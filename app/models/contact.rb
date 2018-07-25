class Contact < ApplicationRecord
    validates :raw_phone_number, :presence => true
end
