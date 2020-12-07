ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        panel "Best selling products by Category last month" do
            pie_chart Product.group(:product_category).count 
        end 
        panel "Latest order status this week" do
            column_chart Order.group(:status).count
        end
        panel "Stores that are out of inventory/stock" do
            line_chart Store.where("units_available < 1").group(:store_name).count, width: "800px", height: "500px"
        end
      end
    end
  end 
end