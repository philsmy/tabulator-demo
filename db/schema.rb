# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_29_160931) do
  create_table "ecom_orders", force: :cascade do |t|
    t.string "platform_ref"
    t.string "product_ref"
    t.datetime "purchased_at"
    t.date "estimated_delivery_date"
    t.float "total_cost"
    t.string "status"
    t.string "sales_channel"
    t.datetime "shipped_at"
    t.string "customer_name"
    t.string "customer_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "favourite_foods"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
