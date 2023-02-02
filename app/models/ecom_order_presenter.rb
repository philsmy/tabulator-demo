class EcomOrderPresenter
  delegate :params, :h, :link_to, :number_to_currency, :truncate, :asset_path, :order_path,
           :local_time, :fulfillment_channel_str_snippet, :state_icon_snippet,
           to: :@view

  def initialize(view)
    @view = view
  end

  def present(orders)
    orders.map do |order|
      {
        customer_address: order.customer_address,
        customer_name: order.customer_name,
        estimated_delivery_date: order.estimated_delivery_date,
        platform_ref: order.platform_ref,
        product_ref: order.product_ref,
        purchased_at: order.purchased_at,
        sales_channel: order.sales_channel,
        shipped_at: order.shipped_at,
        status: order.status,
        total_cost: order.total_cost,
        rich_text: "<div>#{order.id}</div><script>console.log('hello #{order.id}')</script>"
      }
    end
  end
end
