class CreateEcomOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :ecom_orders do |t|
      t.string :platform_ref
      t.string :product_ref
      t.datetime :purchased_at
      t.date :estimated_delivery_date
      t.float :total_cost
      t.string :status
      t.string :sales_channel
      t.datetime :shipped_at
      t.string :customer_name
      t.string :customer_address

      t.timestamps
    end
  end
end
