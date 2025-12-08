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

ActiveRecord::Schema[7.1].define(version: 2024_10_10_212207) do
  create_table "skis", force: :cascade do |t|
    t.string "brand"
    t.text "description"
    t.float "purchase_price"
    t.float "sale_price"
    t.string "image"
    t.string "admin_full_name"
    t.string "admin_emails"
    t.string "admin_address"
    t.integer "quantity_remaining"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "vendor_email"
    t.string "vendor_address"
    t.string "admin_name"
    t.string "admin_emails"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leases", primary_key: ["id", "effective_date"], force: :cascade do |t|
    t.tsrange "effective_date", null: false
    t.bigint "id", null: false
    t.string "sku"
    t.string "admin_name"
    t.string "admin_emails"
    t.decimal "daily_rate"
  end

end
