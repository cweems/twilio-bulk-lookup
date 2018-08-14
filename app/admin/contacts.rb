ActiveAdmin.register Contact do
    active_admin_import

    batch_action :delete_all, confirm: "Are you sure you want to delete all contacts?" do
      Contact.delete_all
      redirect_to collection_path
    end

    permit_params :raw_phone_number, :formatted_phone_number, :mobile_network_code, :error_code, :mobile_country_code, :carrier_name, :device_type

end
