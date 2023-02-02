# == Schema Information
#
# Table name: ecom_orders
#
#  id                      :integer          not null, primary key
#  customer_address        :string
#  customer_name           :string
#  estimated_delivery_date :date
#  platform_ref            :string
#  product_ref             :string
#  purchased_at            :datetime
#  sales_channel           :string
#  shipped_at              :datetime
#  status                  :string
#  total_cost              :float
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
class EcomOrder < ApplicationRecord
end
