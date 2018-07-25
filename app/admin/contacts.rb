ActiveAdmin.register Contact do
    active_admin_import

    permit_params :raw_phone_number, :formatted_phone_number, :mobile_network_code, :error_code, :mobile_country_code, :carrier_name, :device_type

end
