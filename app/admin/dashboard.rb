
ActiveAdmin.register_page "Dashboard" do
  
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }
  
  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      button_to "Run Lookup", '/lookup', :method => :get
    end

    div class: "blank_slate_container", id: "dashboard_default_message" do
      span "Total contacts: " + Contact.count.to_s
      br
      span "Processed contacts:" + Contact.where.not(formatted_phone_number: nil).count.to_s
    end
  end
end
