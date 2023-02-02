require 'faker'

# Create 100 ecom orders
200.times do
  EcomOrder.create(
    customer_address: Faker::Address.full_address,
    customer_name: Faker::Name.name,
    estimated_delivery_date: Faker::Date.forward(days: 30),
    platform_ref: "#{Faker::Alphanumeric.alphanumeric(number: 3,
                                                      min_numeric: 3)}-#{Faker::Alphanumeric.alphanumeric(number: 7,
                                                                                                          min_numeric: 7)}-#{Faker::Alphanumeric.alphanumeric(
                                                                                                            number: 7, min_numeric: 7
                                                                                                          )}",
    product_ref: Faker::Code.asin,
    purchased_at: Faker::Time.backward(days: 365),
    sales_channel: ['Amazon', 'Ebay', 'Etsy', 'Shopify'].sample,
    shipped_at: Faker::Date.between(from: 2.days.ago, to: Date.today),
    status: %w[shipped delivered cancelled].sample,
    total_cost: Faker::Commerce.price
  )
end
